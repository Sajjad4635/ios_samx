import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/post_vehicle/params/plaque_request.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/usecase/post_vehicle/params/post_vehicle_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/bloc/post_vehicle/post_vehicle_bloc.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/pages/vehicle_list_screen.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/widgets/vehicle_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../../core/base_widget/app_auto_height_grid_view/app_auto_height_grid_view.dart';
import '../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../core/base_widget/app_icon/app_icon.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../injection_container.dart';
import '../../../vehicle_service/presentation/pages/vehicle_service_screen.dart';

class AddVehicleScreen extends StatefulWidget {
  String? navigatorName;

  AddVehicleScreen({
    super.key,
    this.navigatorName,
  });

  @override
  State<AddVehicleScreen> createState() => _AddVehicleScreenState();
}

class _AddVehicleScreenState extends State<AddVehicleScreen> {
  late PostVehicleBloc _postVehicleBloc;
  TextEditingController cntRegion = TextEditingController();
  TextEditingController cntSegment1 = TextEditingController();
  TextEditingController cntSegment2 = TextEditingController();
  late FocusNode cntRegionFocusNode = FocusNode();
  late FocusNode cntSegment1FocusNode = FocusNode();
  late FocusNode cntSegment2FocusNode = FocusNode();
  dynamic letter = "";

  bool selectedOption = true;
  bool radioButtonValue1 = true;
  bool radioButtonValue2 = false;

  @override
  void initState() {
    super.initState();
    _postVehicleBloc = sl<PostVehicleBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorTheme.bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: 'vehicle.add_vehicle'.tr(),
          isQrCode: false,
          onPressed: () {
            widget.navigatorName == 'VehicleServices'
                ? Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const VehicleServiceScreen(),
                        type: PageTransitionType.leftToRight))
                : Navigator.pop(context);
          },
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  "${'vehicle.plate_number'.tr()}:",
                  style: (TextTypography.titleMedium
                      .copyWith(color: colorTheme.black)),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              plateRawWidget(width, height, colorTheme),
              Container(
                alignment: Alignment.centerRight,
                padding:
                    const EdgeInsets.only(right: 15.0, top: 32, bottom: 10),
                child: Text(
                  "vehicle.do_you_own_car".tr(),
                  style: (TextTypography.titleSmall),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    start: width * 0.06, end: width * 0.35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio<bool>(
                          value: radioButtonValue1,
                          groupValue: selectedOption,
                          fillColor:
                              MaterialStateProperty.all(colorTheme.primary),
                          splashRadius: 20,
                          onChanged: (bool? value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                        Text(
                          'vehicle.yes'.tr(),
                          style: (TextTypography.labelLarge
                              .copyWith(color: colorTheme.black)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<bool>(
                          value: radioButtonValue2,
                          groupValue: selectedOption,
                          fillColor:
                              MaterialStateProperty.all(colorTheme.primary),
                          splashRadius: 20,
                          onChanged: (bool? value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                        Text(
                          'vehicle.no'.tr(),
                          style: (TextTypography.labelLarge
                              .copyWith(color: colorTheme.black)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              BlocConsumer<PostVehicleBloc, PostVehicleState>(
                bloc: _postVehicleBloc,
                listener: (context, state) => state.maybeWhen(
                  loadFailure: (error) {
                    return showErrorWidget(
                        context, error.code!, error.message!);
                  },
                  loadSuccess: (response) {
                    widget.navigatorName == 'VehicleServices'
                        ? Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const VehicleServiceScreen(),
                                type: PageTransitionType.leftToRight))
                        : Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const VehicleListScreen(),
                                type: PageTransitionType.leftToRight));
                    return null;
                  },
                  orElse: () {
                    return null;
                  },
                ),
                builder: (context, state) {
                  final buttonLoading = state is PostVehicleStateLoading;
                  return AppButton(
                    title: 'vehicle.plate_submit'.tr(),
                    buttonType: ButtonType.isFilled,
                    customHeight: 48,
                    customWidth: width * 0.9,
                    buttonLoading: buttonLoading,
                    isFilledEnable: cntRegion.text.length == 2 &&
                            letter.toString().isNotEmpty &&
                            cntSegment2.text.length == 3 &&
                            cntSegment1.text.length == 2
                        ? true
                        : false,
                    onPressed: () {
                      _postVehicleBloc.add(
                          PostVehicleEvent.postVehicleEventCalled(
                              postVehicleParam: PostVehicleParam(
                                  plaqueRequest: PlaqueRequest(
                                      letter: letter,
                                      region: cntRegion.text,
                                      segment1: cntSegment1.text,
                                      segment2: cntSegment2.text),
                                  isOwner: selectedOption)));
                    },
                  );
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget plateRawWidget(width, height, colorTheme) {
    return SimpleRoundedContainer(
      width: width * 0.9,
      height: 89,
      bgColor: colorTheme.layer,
      borderColor: colorTheme.borders,
      borderRadius: 8.0,
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 0, top: 0),
              child: SizedBox(
                height: 57,
                width: width * 0.16,
                child: VehicleTextField(
                  controller: cntRegion,
                  isNumber: true,
                  maxLength: 2,
                  onChanged: (value) {
                    if (value.length == 2) {
                      FocusScope.of(context).unfocus();
                    }
                  },
                  label: 'vehicle.iran'.tr(),
                  focusNode: cntRegionFocusNode,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                width: width * 0.16,
                height: 57,
                child: VehicleTextField(
                  controller: cntSegment2,
                  isNumber: true,
                  maxLength: 3,
                  onChanged: (value) {
                    if (value.length == 3) {
                      FocusScope.of(context).requestFocus(cntRegionFocusNode);
                    }
                  },
                  focusNode: cntSegment2FocusNode,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: InkWell(
                  onTap: () {
                    plateNumberLetterBottomSheet(
                      context: context,
                      colorTheme: colorTheme,
                      width: width,
                    );
                  },
                  child: SimpleRoundedContainer(
                    width: width * 0.16,
                    height: 57,
                    bgColor: colorTheme.white,
                    borderRadius: 8.0,
                    borderColor: colorTheme.borders,
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          letter.toString(),
                          style: TextTypography.labelLarge
                              .copyWith(color: colorTheme.textVariant),
                        ),
                        Icon(
                          Magicon.solidAngleDownSmall,
                          color: colorTheme.textVariant,
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                width: width * 0.16,
                height: 57,
                child: VehicleTextField(
                  controller: cntSegment1,
                  focusNode: cntSegment1FocusNode,
                  onChanged: (value) {
                    if (value.length == 2) {
                      plateNumberLetterBottomSheet(
                        context: context,
                        colorTheme: colorTheme,
                        width: width,
                      );
                    }
                  },
                  isNumber: true,
                  maxLength: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 0),
              child: SizedBox(
                height: 57,
                width: width * 0.16,
                child: Image(
                  width: width * 0.13,
                  image: const AssetImage(
                    "assets/images/raw_plate.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future plateNumberLetterBottomSheet({
    required BuildContext context,
    required CustomTheme colorTheme,
    required double width,
  }) {
    return showModalBottomSheet(
        context: context,
        constraints: BoxConstraints(
          maxWidth: width,
        ),
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        builder: (context) {
          return Container(
            color: colorTheme.layer,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: colorTheme.layer,
                    alignment: Alignment.topRight,
                    child: Text(
                      'vehicle.plate_letter'.tr(),
                      style: TextTypography.titleMedium
                          .copyWith(color: colorTheme.text),
                    ),
                  ),
                  Container(
                    width: width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.6,
                    margin: const EdgeInsets.only(top: 16, bottom: 16),
                    color: colorTheme.layer,
                    child: Column(
                      children: [
                        AutoHeightGridView(
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: plateLetter.length,
                          builder: (BuildContext ctx, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  letter = plateLetter[index];
                                  Navigator.pop(context);
                                });
                              },
                              child: SimpleRoundedContainer(
                                width: width * 0.1,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                bgColor: colorTheme.intComponents,
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                widget: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(plateLetter[index],
                                          style: (TextTypography.titleMedium
                                              .copyWith(
                                                  color: colorTheme.text))),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppIcon(
                              icon: Icon(
                                Magicon.infoCircle,
                                color: colorTheme.primary,
                                size: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('vehicle.special_plate'.tr(),
                                style: (TextTypography.labelMedium
                                    .copyWith(color: colorTheme.text)))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).then((value) {
      FocusScope.of(context).unfocus();
      FocusScope.of(context).requestFocus(cntSegment2FocusNode);
    });
  }

  List plateLetter = [
    'الف',
    'ب',
    'پ',
    'ت',
    'ث',
    'ج',
    'د',
    'ز',
    'س',
    'ش',
    'ص',
    'ط',
    'ع',
    'ف',
    'ق',
    'ک',
    'گ',
    'ل',
    'م',
    'ن',
    'و',
    'ه',
    'ی',
    'ژ',
    'D',
    'S',
    // Magicon.lightEmergency
  ];
}
