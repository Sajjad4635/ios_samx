import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/domain/usecase/vehicle_dept/params/vehicle_dept_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/presentation/pages/widget/insurance_detail_widget.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/presentation/pages/widget/plate_widget.dart';
import 'package:ios_samx/feature/main_app/vehicle_service/presentation/pages/widget/vehicle_dotted_container_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/base_widget/app_alert_dialog/app_alert_dialog.dart';
import '../../../../../core/base_widget/app_bottom_sheet/show_app_bottom_sheet.dart';
import '../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../core/base_widget/app_buttons/app_error_button/app_error_button.dart';
import '../../../../../core/base_widget/app_snack_bar/app_snack_bar.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/extensions/convert_date.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/ball_beat_progress_indicator.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../injection_container.dart';
import '../../../profile/domain/usecase/get_risk_score/param/get_risk_score_param.dart';
import '../../../profile/presentaion/bloc/get_risk_score/get_risk_score_bloc.dart';
import '../../../vehicle_inspection/presentation/pages/vehicle_inspection_type_screen.dart';
import '../../../vehicle_profile/domain/entities/vehicle/vehicle_response_data/vehicle_response_data.dart';
import '../../../vehicle_profile/domain/usecase/delete_vehicle/params/delete_vehicle_param.dart';
import '../../../vehicle_profile/domain/usecase/edit_vehicle/params/edit_vehicle_param.dart';
import '../../../vehicle_profile/presentaion/bloc/delete_vehicle/delete_vehicle_bloc.dart';
import '../../../vehicle_profile/presentaion/bloc/edit_vehicle/edit_vehicle_bloc.dart';
import '../../../vehicle_profile/presentaion/bloc/vehicle/vehicle_bloc.dart';
import '../../../vehicle_profile/presentaion/pages/add_vehicle_screen.dart';
import '../../../vehicle_profile/presentaion/widgets/edit_plate_widget.dart';
import '../../../vehicle_profile/presentaion/widgets/empty_vehicle_list_widget.dart';
import '../../../vehicle_profile/presentaion/widgets/plate_list_widget.dart';
import '../bloc/vehicle_debt_bloc/vehicle_dept_bloc.dart';

class VehicleServiceScreen extends StatefulWidget {
  const VehicleServiceScreen({Key? key}) : super(key: key);

  @override
  State<VehicleServiceScreen> createState() => _VehicleServiceScreenState();
}

class _VehicleServiceScreenState extends State<VehicleServiceScreen>
    with SingleTickerProviderStateMixin {
  bool isLoading = true;
  int currentIndex = 0;
  late String nationalCode;
  late String birthDate;
  late TabController tabController;
  String? latestInquiry = '';
  late String birthDateFinal;
  late String givenName = '';
  late String familyName = '';
  int deptAmount = 0;

  double? riskScore;

  late VehicleBloc _vehicleBloc;
  late EditVehicleBloc _editVehicleBloc;
  late GetRiskScoreBloc _getRiskScoreBloc;
  late DeleteVehicleBloc _deleteVehicleBloc;
  late VehicleDeptBloc _vehicleDeptBloc;

  List<VehicleResponseData> vehicleResponseData = [];

  TextEditingController editCnt = TextEditingController();
  TextEditingController riskCnt = TextEditingController();
  PageController pageController = PageController(
    viewportFraction: 0.8,
  );

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get(Strings.nationalId);
    givenName = box.get("given_name");
    familyName = box.get("family_name");

    birthDate = box.get(Strings.birthDate);
    riskScore = box.get(Strings.riskScore);
    latestInquiry = box.get(Strings.latestRiskInquiry);

    _vehicleBloc = sl<VehicleBloc>();
    _vehicleDeptBloc = sl<VehicleDeptBloc>();
    _editVehicleBloc = sl<EditVehicleBloc>();
    _getRiskScoreBloc = sl<GetRiskScoreBloc>();
    _deleteVehicleBloc = sl<DeleteVehicleBloc>();

    _vehicleBloc.add(VehicleEvent.vehicleEventCalled(noParams: NoParams()));

    riskCnt.text = "strings.inquiry".tr();
    tabController = TabController(length: 3, vsync: this);

    birthDateFinal =
        ConvertDate().convertGregorianToJalaliTwoNumber(birthDate).toString();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Scaffold(
      backgroundColor: colorTheme.bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: 'main.car_services'.tr(),
          isQrCode: false,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => _vehicleBloc,
            ),
            BlocProvider(
              create: (context) => _getRiskScoreBloc,
            ),
            BlocProvider(
              create: (context) => _deleteVehicleBloc,
            ),
            BlocProvider(
              create: (context) => _editVehicleBloc,
            ),
            BlocProvider(
              create: (context) => _vehicleDeptBloc,
            ),
          ],
          child: MultiBlocListener(
            listeners: [
              BlocListener<VehicleBloc, VehicleState>(
                bloc: _vehicleBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      showErrorWidget(context, error.code!, error.message!);
                    },
                    loadSuccess: (vehicleEntities) {
                      setState(() {
                        vehicleResponseData =
                            vehicleEntities.vehicleResponseData;
                        _vehicleDeptBloc.add(
                            VehicleDeptEvent.vehicleDeptEventCalled(
                                vehicleDeptParam: VehicleDeptParam(
                                    region:
                                        vehicleResponseData.first.plaque.region,
                                    letter:
                                        vehicleResponseData.first.plaque.letter,
                                    segment1: vehicleResponseData
                                        .first.plaque.segment1,
                                    segment2: vehicleResponseData
                                        .first.plaque.segment2)));
                      });
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<VehicleDeptBloc, VehicleDeptState>(
                bloc: _vehicleDeptBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      showErrorWidget(context, error.code!, error.message!);
                    },
                    loadSuccess: (vehicleDeptEntities) {
                      setState(() {
                        deptAmount = vehicleDeptEntities
                            .vehicleDeptResponseData.totalAmount!;
                      });
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<GetRiskScoreBloc, GetRiskScoreState>(
                bloc: _getRiskScoreBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      AppSnackBar.showSnackBar(
                        context: context,
                        type: SnackBarType.error,
                        message: 'strings.risk_error'.tr(),
                        title: "strings.close".tr(),
                      );
                    },
                    loadSuccess: (getRiskScoreEntities) {
                      setState(() {
                        riskCnt.text =
                            "${getRiskScoreEntities.getRiskScoreResponseData.safetyScore}  ${'strings.score'.tr()}";

                        latestInquiry = getRiskScoreEntities
                            .getRiskScoreResponseData.lastInquiryDate
                            .toString();

                        final Box box = Hive.box(Strings.appDBName);
                        box.put(
                            Strings.riskScore,
                            getRiskScoreEntities
                                .getRiskScoreResponseData.safetyScore);

                        box.put(
                            Strings.latestRiskInquiry,
                            getRiskScoreEntities
                                .getRiskScoreResponseData.lastInquiryDate);
                      });
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<DeleteVehicleBloc, DeleteVehicleState>(
                bloc: _deleteVehicleBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      showErrorWidget(context, error.code!, error.message!);
                    },
                    loadSuccess: (deleteVehicleEntities) {
                      AppSnackBar.showSnackBar(
                        context: context,
                        type: SnackBarType.success,
                        title: 'main.close'.tr(),
                        message: "main.delete_success".tr(),
                      );
                      _vehicleBloc.add(VehicleEvent.vehicleEventCalled(
                          noParams: NoParams()));
                    },
                    orElse: () {},
                  );
                },
              ),
              BlocListener<EditVehicleBloc, EditVehicleState>(
                bloc: _editVehicleBloc,
                listener: (context, state) {
                  state.maybeWhen(
                    loadFailure: (error) {
                      showErrorWidget(context, error.code!, error.message!);
                    },
                    loadSuccess: (editVehicleEntities) {
                      _vehicleBloc.add(VehicleEvent.vehicleEventCalled(
                          noParams: NoParams()));
                    },
                    orElse: () {},
                  );
                },
              ),
            ],
            child: SizedBox(
              height: height,
              width: width,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    width: width,
                    child: BlocBuilder<VehicleBloc, VehicleState>(
                      bloc: _vehicleBloc,
                      builder: (context, state) {
                        final loading = state is VehicleStateLoading;
                        return loading
                            ? SizedBox(
                                width: width * 0.08,
                                height: 50,
                                child: BallBeatProgressIndicator(
                                  size: width * 0.09,
                                  color: colorTheme.primary,
                                ))
                            : vehicleResponseData.isEmpty
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30.0,
                                        left: 20.0,
                                        right: 20.0,
                                        bottom: 30.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            PageTransition(
                                                child: AddVehicleScreen(
                                                  navigatorName:
                                                      'VehicleServices',
                                                ),
                                                type: PageTransitionType
                                                    .leftToRight));
                                      },
                                      child: VehicleDottedContainerWidget(
                                        iconWidth: 20,
                                        iconHeight: 20,
                                        iconName: 'assets/images/plus.png',
                                        width: width * 1,
                                        caption: 'main.add_plates'.tr(),
                                        height: 20,
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    width: width,
                                    height: height * 0.7,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12.0, left: 9.0, right: 9.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'main.plates'.tr(),
                                                style: TextTypography
                                                    .titleMedium
                                                    .copyWith(
                                                  color: colorTheme.text,
                                                ),
                                              ),
                                              const Spacer(),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushReplacement(
                                                      context,
                                                      PageTransition(
                                                          child:
                                                              AddVehicleScreen(
                                                            navigatorName:
                                                                'VehicleServices',
                                                          ),
                                                          type:
                                                              PageTransitionType
                                                                  .leftToRight));
                                                },
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 4.0),
                                                      child: Image(
                                                        height: height * 0.03,
                                                        image: const AssetImage(
                                                            "assets/images/plus.png"),
                                                      ),
                                                    ),
                                                    Text(
                                                      'main.add_plates'.tr(),
                                                      style: TextTypography
                                                          .labelLarge
                                                          .copyWith(
                                                        color:
                                                            colorTheme.primary,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            height: 100,
                                            width: width,
                                            // color: Colors.red,
                                            padding: const EdgeInsets.only(
                                                top: 12.0),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0, right: 20.0),
                                              child: PageView.builder(
                                                itemCount:
                                                    vehicleResponseData.length,

                                                ///change
                                                onPageChanged: (int index) {
                                                  setState(() {
                                                    currentIndex = index;
                                                  });
                                                  _vehicleDeptBloc.add(VehicleDeptEvent
                                                      .vehicleDeptEventCalled(
                                                          vehicleDeptParam: VehicleDeptParam(
                                                              region:
                                                                  vehicleResponseData[
                                                                          index]
                                                                      .plaque
                                                                      .region,
                                                              letter:
                                                                  vehicleResponseData[
                                                                          index]
                                                                      .plaque
                                                                      .letter,
                                                              segment1:
                                                                  vehicleResponseData[
                                                                          index]
                                                                      .plaque
                                                                      .segment1,
                                                              segment2:
                                                                  vehicleResponseData[
                                                                          index]
                                                                      .plaque
                                                                      .segment2)));
                                                },
                                                controller: pageController,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  10)),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.3),
                                                          spreadRadius: 2,
                                                          blurRadius: 3,
                                                          offset: const Offset(
                                                              0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          IconButton(
                                                            icon: const Icon(
                                                              Magicon
                                                                  .moreVertical,
                                                            ),
                                                            color: Colors.black,
                                                            onPressed:
                                                                () async {
                                                              await plateDialog(
                                                                vehicleId:
                                                                    vehicleResponseData[
                                                                            index]
                                                                        .id,
                                                                vehicleName:
                                                                    vehicleResponseData[
                                                                            index]
                                                                        .title,
                                                                letter:
                                                                    vehicleResponseData[
                                                                            index]
                                                                        .plaque
                                                                        .letter,
                                                                segment2: vehicleResponseData[
                                                                        index]
                                                                    .plaque
                                                                    .segment2
                                                                    .toString(),
                                                                segment1: vehicleResponseData[
                                                                        index]
                                                                    .plaque
                                                                    .segment1
                                                                    .toString(),
                                                                region: vehicleResponseData[
                                                                        index]
                                                                    .plaque
                                                                    .region
                                                                    .toString(),
                                                                colorTheme:
                                                                    colorTheme,
                                                                width: width,
                                                              );
                                                            },
                                                          ),
                                                          SizedBox(
                                                            width: width * 0.5,
                                                            height:
                                                                height * 0.2,
                                                            child:
                                                                PlateListWidget(
                                                              region:
                                                                  vehicleResponseData[
                                                                          index]
                                                                      .plaque
                                                                      .region
                                                                      .toString(),
                                                              letter:
                                                                  vehicleResponseData[
                                                                          index]
                                                                      .plaque
                                                                      .letter,
                                                              segment1:
                                                                  vehicleResponseData[
                                                                          index]
                                                                      .plaque
                                                                      .segment1
                                                                      .toString(),
                                                              segment2:
                                                                  vehicleResponseData[
                                                                          index]
                                                                      .plaque
                                                                      .segment2
                                                                      .toString(),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            )),
                                      ],
                                    ),
                                  );
                      },
                    ),
                  ),
                  TabBar(
                    controller: tabController,
                    indicatorColor: colorTheme.primary,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: colorTheme.bgInverse,
                    unselectedLabelColor: colorTheme.textVariant,
                    labelStyle: TextTypography.labelLarge,
                    tabs: [
                      Tab(
                        text: 'main.insurances'.tr(),
                      ),
                      Tab(
                        text: 'main.depts'.tr(),
                      ),
                      Tab(
                        text: 'main.other_services'.tr(),
                      ),
                    ],
                  ),
                  vehicleResponseData.isNotEmpty &&
                          vehicleResponseData.isNotEmpty &&
                          currentIndex < vehicleResponseData.length
                      ? Expanded(
                          child: TabBarView(
                          controller: tabController,
                          children: [
                            Column(
                              children: [
                                riskScoreWidget(),
                                GestureDetector(
                                  onTap: () {
                                    insDetailBottomSheet(
                                        vehicleResponseData[currentIndex],
                                        colorTheme: colorTheme);
                                  },
                                  child: Container(
                                    width: width,
                                    height: height * 0.07,
                                    margin: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/accident.png",
                                            height: 24,
                                            width: 24,
                                          ),
                                          Text(
                                            vehicleResponseData[currentIndex]
                                                .vehicle
                                                .typePolicy,
                                            style: TextTypography.titleSmall
                                                .copyWith(
                                              color: colorTheme.black,
                                            ),
                                          ),
                                          const Spacer(),
                                          SimpleRoundedContainer(
                                            width: width * 0.3,
                                            height: 30,
                                            bgColor: colorTheme.infoContainer,
                                            borderRadius: 8.0,
                                            borderColor: Colors.transparent,
                                            widget: Center(
                                              child: Text(
                                                "${vehicleResponseData[currentIndex].vehicle.status} ${ConvertDate().diffJalaliDate(vehicleResponseData[currentIndex].vehicle.endDate).toPersianDigit()}${'main.day'.tr()}",
                                                style: TextTypography.titleSmall
                                                    .copyWith(
                                                  color: colorTheme
                                                      .onInfoContainer,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                riskScoreWidget(),
                                Container(
                                  width: width,
                                  height: height * 0.07,
                                  margin: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/road.png",
                                          height: 24,
                                          width: 24,
                                        ),
                                        Text(
                                          'main.highway'.tr(),
                                          style: TextTypography.titleSmall
                                              .copyWith(
                                            color: colorTheme.black,
                                          ),
                                        ),
                                        const Spacer(),
                                        BlocBuilder<VehicleDeptBloc,
                                            VehicleDeptState>(
                                          bloc: _vehicleDeptBloc,
                                          builder: (context, state) {
                                            final loading = state
                                                is VehicleDeptStateLoading;
                                            return SimpleRoundedContainer(
                                              width: width * 0.3,
                                              height: 30,
                                              bgColor: deptAmount == 0
                                                  ? colorTheme.successContainer
                                                  : colorTheme.errorContainer,
                                              borderRadius: 8.0,
                                              borderColor: Colors.transparent,
                                              widget: loading
                                                  ? BallBeatProgressIndicator(
                                                      size: width * 0.03,
                                                      color: colorTheme.primary,
                                                    )
                                                  : Center(
                                                      child: Text(
                                                        "${deptAmount.toString().toPersianDigit().seRagham()} ${'darmanet.saved_money_currency'.tr()}",
                                                        style: TextTypography
                                                            .titleSmall
                                                            .copyWith(
                                                          color: deptAmount == 0
                                                              ? colorTheme
                                                                  .success
                                                              : colorTheme
                                                                  .onErrorContainer,
                                                        ),
                                                      ),
                                                    ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            ///
                            Column(
                              children: [
                                riskScoreWidget(),
                                Container(
                                  width: width,
                                  height: height * 0.07,
                                  margin: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          PageTransition(
                                              child:
                                                  VehicleInspectionTypeScreen(
                                                region: vehicleResponseData[
                                                        currentIndex]
                                                    .plaque
                                                    .region
                                                    .toString(),
                                                plateAlphabet:
                                                    vehicleResponseData[
                                                            currentIndex]
                                                        .plaque
                                                        .letter
                                                        .toString(),
                                                segment1: vehicleResponseData[
                                                        currentIndex]
                                                    .plaque
                                                    .segment1
                                                    .toString(),
                                                segment2: vehicleResponseData[
                                                        currentIndex]
                                                    .plaque
                                                    .segment2
                                                    .toString(),
                                              ),
                                              type: PageTransitionType
                                                  .leftToRight));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/camera-circle.png",
                                            height: 24,
                                            width: 24,
                                            color: Colors.black,
                                          ),
                                          Text(
                                            'main.online_visit'.tr(),
                                            style: TextTypography.titleSmall
                                                .copyWith(
                                              color: colorTheme.black,
                                            ),
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            "assets/images/left.png",
                                            height: 24,
                                            width: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))
                      : const EmptyVehicleList()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> insDetailBottomSheet(VehicleResponseData vehicleResponseData,
      {required CustomTheme colorTheme}) async {
    await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return InsuranceDetailWidget(
            vehicleResponseData: vehicleResponseData,
          );
        });
  }

  Future<void> plateDialog({
    required CustomTheme colorTheme,
    required double width,
    required String vehicleName,
    required String vehicleId,
    required String region,
    required String letter,
    required String segment1,
    required String segment2,
  }) async {
    await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return PlateWidget(
            region: region,
            letter: letter,
            segment1: segment1,
            segment2: segment2,
            vehicleName: vehicleName,
            onPressedTitleEdit: () async {
              Navigator.pop(context);
              await editPlateBottomSheet(
                vehicleId: vehicleId,
                region: region,
                letter: letter,
                segment1: segment1,
                segment2: segment2,
                vehicleName: vehicleName,
                colorTheme: colorTheme,
                width: width,
              );
            },
            onPressedDelete: () async {
              Navigator.pop(context);
              await deleteDialog(vehicleId: vehicleId, colorTheme: colorTheme);
            },
          );
        });
  }

  Future<void> editPlateBottomSheet(
      {required CustomTheme colorTheme,
      required double width,
      required String vehicleName,
      required String region,
      required String letter,
      required String segment1,
      required String segment2,
      required String vehicleId}) async {
    await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return BlocBuilder<EditVehicleBloc, EditVehicleState>(
              bloc: _editVehicleBloc,
              builder: (context, state) {
                return EditPlateWidget(
                  vehicleName: vehicleName,
                  letter: letter,
                  region: region,
                  segment1: segment1,
                  segment2: segment2,
                  editPlateController: editCnt,
                  submitChangesOnPressed: () {
                    _editVehicleBloc.add(
                        EditVehicleEvent.editVehicleEventCalled(
                            editVehicleParam: EditVehicleParam(
                                vehicleId: vehicleId, title: editCnt.text)));
                    Navigator.of(context).pop();
                  },
                );
              });
        });
  }

  Future<void> deleteDialog(
      {required CustomTheme colorTheme, required String vehicleId}) async {
    await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return BlocBuilder<DeleteVehicleBloc, DeleteVehicleState>(
            bloc: _deleteVehicleBloc,
            builder: (context, state) {
              return AppAlertDialog(
                hasIcon: true,
                title: "vehicle.delete_confirm".tr(),
                body: "vehicle.delete_msg".tr(),
                icon: const Image(
                  width: 40,
                  image: AssetImage(
                    "assets/images/delete_v_dialog.png",
                  ),
                ),
                buttons: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppErrorButton(
                      title: "vehicle.delete".tr(),
                      customWidth: MediaQuery.of(context).size.width * 0.3,
                      customHeight: 40,
                      onPressed: () {
                        _deleteVehicleBloc.add(
                            DeleteVehicleEvent.deleteVehicleEventCalled(
                                deleteVehicleParam:
                                    DeleteVehicleParam(vehicleId: vehicleId)));
                        Navigator.of(context).pop();
                      },
                      buttonErrorType: ButtonErrorType.isFilledError,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextButton(
                        child: Text(
                          "vehicle.refuse".tr(),
                          style: TextTypography.labelLarge
                              .copyWith(color: colorTheme.textVariant),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ),
                onPressedChBox: (bool? value) {},
              );
            },
          );
        });
  }

  Widget riskScoreWidget() {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return SizedBox(
      width: width,
      height: height * 0.08,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Magicon.infoSquare),
            color: colorTheme.bgInverse,
            onPressed: () async {
              await showAppBottomSheet(
                context: context,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: Text(
                          "strings.what_is_driver_risk".tr(),
                          style: AppStyle.size14Weight600
                              .copyWith(color: AppColors.gray),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "strings.what_is_driver_risk_caption".tr(),
                        style: AppStyle.size14Weight600
                            .copyWith(color: AppColors.indigoRainbow),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppButton(
                        buttonType: ButtonType.isSecondary,
                        title: "strings.understand".tr(),
                        customHeight: 48,
                        customWidth: width * 0.9,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Text(
            "${'strings.risk_score'.tr()} $givenName $familyName",
            style: AppStyle.size14Weight600.copyWith(color: AppColors.black),
          ),
          const Spacer(),
          BlocBuilder<GetRiskScoreBloc, GetRiskScoreState>(
            bloc: _getRiskScoreBloc,
            builder: (context, state) {
              final loading = state is GetRiskScoreStateLoading;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  riskScore == null
                      ? SizedBox(
                          width: width * 0.4,
                          child: loading
                              ? SizedBox(
                                  width: width * 0.08,
                                  height: 50,
                                  child: BallBeatProgressIndicator(
                                    size: width * 0.03,
                                    color: colorTheme.primary,
                                  ))
                              : AppButton(
                                  buttonType: ButtonType.isText,
                                  title:
                                      riskCnt.text.toString().toPersianDigit(),
                                  style: AppStyle.size14Weight600
                                      .copyWith(color: AppColors.secondary),
                                  customHeight: 0,
                                  customWidth: 0,
                                  onPressed: () {
                                    _getRiskScoreBloc.add(GetRiskScoreEvent
                                        .getRiskScoreEventCalled(
                                            getRiskScoreParam:
                                                GetRiskScoreParam(
                                                    nationalCode: nationalCode,
                                                    birthDate:
                                                        birthDateFinal)));
                                  }),
                        )
                      : Text(
                          "${riskScore.toString().toPersianDigit()} ${'strings.score'.tr()}",
                          style: AppStyle.size14Weight600
                              .copyWith(color: AppColors.black),
                        ),
                  latestInquiry == null
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 3.0),
                          child: Text(
                            'strings.last_risk_inquiry'.tr() +
                                latestInquiry!.toPersianDigit(),
                            style: AppStyle.size10Weight300
                                .copyWith(color: AppColors.gray),
                          ),
                        ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
