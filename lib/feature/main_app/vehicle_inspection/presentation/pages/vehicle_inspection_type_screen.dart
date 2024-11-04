import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/get_process/param/get_process_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/presentation/bloc/get_process_bloc/get_process_bloc.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/presentation/pages/vehicle_inspection_confirm_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../../core/base_widget/app_alert_dialog/app_alert_dialog.dart';
import '../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/ball_beat_progress_indicator.dart';
import '../../../../../injection_container.dart';
import '../../domain/entities/get_process/get_process_response_data/get_process_response_data.dart';
import '../../domain/usecase/create_basic_expertise/param/create_basic_expertise_param.dart';
import '../bloc/create_basic_expertise_bloc/create_basic_expertise_bloc.dart';
import 'other_vehicle_inspection_info_screen.dart';

class VehicleInspectionTypeScreen extends StatefulWidget {
  final String plateAlphabet;
  final String region;
  final String segment1;
  final String segment2;

  const VehicleInspectionTypeScreen(
      {super.key, required this.plateAlphabet, required this.region, required this.segment1, required this.segment2});

  @override
  State<VehicleInspectionTypeScreen> createState() => _VehicleInspectionTypeScreenState();
}

class _VehicleInspectionTypeScreenState extends State<VehicleInspectionTypeScreen> {
  TextEditingController phoneCnt = TextEditingController();
  bool isChecked = false;
  int _viewerValue = 0;
  String givenName = "";
  String familyName = "";
  String phoneNo = "";
  late GetProcessBloc _getProcessBloc;
  List<GetProcessResponseData> getProcessResponseData = [];
  late CreateBasicExpertiseBloc _createBasicExpertiseBloc;

  @override
  void initState() {
    super.initState();
    Box box = Hive.box(Strings.appDBName);
    givenName = box.get("given_name");
    familyName = box.get("family_name");
    phoneNo = box.get("phoneNumber");
    _getProcessBloc = sl<GetProcessBloc>();
    _getProcessBloc.add(const GetProcessEvent.getProcessEventCalled(
        getProcessParam: GetProcessParam(channelId: "C9BF3BE3-7406-4604-9FE1-91DCD7810626")));
    _createBasicExpertiseBloc = sl<CreateBasicExpertiseBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorTheme.bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: 'main.online_visit_of_the_car'.tr(),
          isQrCode: false,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocProvider(
          create: (context) => _getProcessBloc,
          child: BlocListener<GetProcessBloc, GetProcessState>(
            bloc: _getProcessBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (error) {
                  showErrorWidget(context, error.code!, error.message!);
                },
                loadSuccess: (getProcessEntities) {
                  setState(() {
                    getProcessResponseData = getProcessEntities.getProcessResponseData;
                  });
                },
                orElse: () {},
              );
            },
            child: BlocBuilder<GetProcessBloc, GetProcessState>(
              bloc: _getProcessBloc,
              builder: (context, state) {
                final loading = state is GetProcessStateLoading;
                return loading
                    ? Container(
                        alignment: Alignment.center,
                        child: BallBeatProgressIndicator(
                          size: width * 0.09,
                          color: colorTheme.primary,
                        ))
                    : getProcessResponseData.isEmpty
                        ? const Center(child: Text('فاقد اطلاعات'))
                        : SingleChildScrollView(
                            child: Align(
                              child: SizedBox(
                                width: width * 0.9,
                                height: height,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        'vehicle.choose_ins_type'.tr(),
                                        style: TextTypography.titleMedium.copyWith(color: colorTheme.bgInverse),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    RadioListTile(
                                      value: 1,
                                      groupValue: 1,
                                      onChanged: (value) {},
                                      activeColor: colorTheme.primary,
                                      tileColor: colorTheme.layer,
                                      title: Text(getProcessResponseData.first.title.toString(),
                                          style: TextTypography.labelLarge.copyWith(color: colorTheme.bgInverse)),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        'vehicle.inspection_visitor'.tr(),
                                        style: TextTypography.titleMedium.copyWith(color: colorTheme.bgInverse),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    RadioListTile(
                                      activeColor: colorTheme.primary,
                                      tileColor: colorTheme.layer,
                                      title: Text(
                                        'vehicle.inspection_me'.tr(),
                                        style: TextTypography.labelLarge.copyWith(color: colorTheme.bgInverse),
                                      ),
                                      value: 1,
                                      groupValue: _viewerValue,
                                      selected: true,
                                      onChanged: (value) {
                                        setState(() {
                                          _viewerValue = value!;
                                        });
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    RadioListTile(
                                      activeColor: colorTheme.primary,
                                      tileColor: colorTheme.layer,
                                      title: Text(
                                        'vehicle.inspection_other'.tr(),
                                        style: TextTypography.labelLarge.copyWith(color: colorTheme.bgInverse),
                                      ),
                                      value: 2,
                                      groupValue: _viewerValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _viewerValue = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
              },
            ),
          )),
      floatingActionButton: AppButton(
        buttonType: ButtonType.isFilled,
        isFilledEnable: _viewerValue != 0 ? true : false,
        title: "vehicle.next_level".tr(),
        customHeight: 48,
        customWidth: width * 0.9,
        onPressed: () async {
          print(_viewerValue);
          _viewerValue == 1
              ? await userDialog(width, colorTheme)
              : _viewerValue == 2
                  ? Navigator.push(
                      context,
                      PageTransition(
                          child: OtherVehicleInspectionInfoScreen(
                            plateAlphabet: widget.plateAlphabet,
                            region: widget.region,
                            segment1: widget.segment1,
                            segment2: widget.segment2,
                          ),
                          type: PageTransitionType.leftToRight))
                  : null;
          // : ;
        },
      ),
    );
  }

  Future<void> imagingDialog() async {
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AppAlertDialog(
            icon: Icon(Magicon.exclamationCircle, color: colorTheme.textVariant),
            hasCheckBox: true,
            title: 'vehicle.caution'.tr(),
            chBoxDesc: 'vehicle.increase_time'.tr(),
            chBoxValue: isChecked,
            onPressedChBox: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
            hasIcon: true,
            body: 'vehicle.imaging_time'.tr(),
            buttons: AppButton(
              title: 'vehicle.create_request'.tr(),
              buttonType: ButtonType.isFilled,
              customHeight: 48,
              customWidth: width * 0.9,
              onPressed: () {},
            ),
          );
        });
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.white;
  }

  Future<void> userDialog(width, colorTheme) async {
    await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return BlocConsumer<CreateBasicExpertiseBloc, CreateBasicExpertiseState>(
            bloc: _createBasicExpertiseBloc,
            listener: (context, state) => state.maybeWhen(
              loadFailure: (error) {
                return showErrorWidget(context, error.code!, error.message!);
              },
              loadSuccess: (createBasicExpertiseEntities) {
                return Navigator.push(
                    context,
                    PageTransition(
                        child: VehicleInspectionConfirmScreen(
                          token: createBasicExpertiseEntities.createBasicExpertiseResponseData.token.toString(),
                          region: widget.region,
                          segment2: widget.segment2,
                          segment1: widget.segment1,
                          letter: widget.plateAlphabet,
                        ),
                        type: PageTransitionType.leftToRight));
              },
              orElse: () {
                return null;
              },
            ),
            builder: (BuildContext context, CreateBasicExpertiseState state) {
              final buttonLoading = state is CreateBasicExpertiseStateLoading;
              return AppAlertDialog(
                hasIcon: false,
                title: "vehicle.confirm_info".tr(),
                body:
                    "${"vehicle.user_confirm".tr()}${"vehicle.user_confirm_plate".tr()}${widget.segment2} ${widget.plateAlphabet} ${widget.segment1} ${"vehicle.confirm_iran".tr()}${widget.region}${"vehicle.confirm_info_request".tr()}",
                buttons: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(
                      buttonType: ButtonType.isFilled,
                      buttonLoading: buttonLoading,
                      title: "vehicle.yes".tr(),
                      customWidth: MediaQuery.of(context).size.width * 0.3,
                      customHeight: 40,
                      onPressed: () {
                        _createBasicExpertiseBloc.add(CreateBasicExpertiseEvent.createBasicExpertiseEventCalled(
                            createBasicExpertiseParam: CreateBasicExpertiseParam(
                          segment1: widget.segment1,
                          segment2: widget.segment2,
                          region: widget.region,
                          fullName: givenName + familyName,
                          plateAlphabet: widget.plateAlphabet,
                          phoneNumber: phoneNo,
                          channelId: 'C9BF3BE3-7406-4604-9FE1-91DCD7810626',
                        )));
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextButton(
                        child: Text(
                          "vehicle.edit_info".tr(),
                          style: TextTypography.labelLarge.copyWith(color: colorTheme.primary),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ),
              );
            },
          );
        });
  }
}
