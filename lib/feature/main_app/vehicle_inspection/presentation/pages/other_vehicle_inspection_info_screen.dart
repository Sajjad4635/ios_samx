import 'package:ios_samx/core/base_widget/app_buttons/app_button/app_button.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/base_widget/app_alert_dialog/app_alert_dialog.dart';
import '../../../../../core/base_widget/app_text_field/app_text_field.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../injection_container.dart';
import '../../domain/usecase/create_basic_expertise/param/create_basic_expertise_param.dart';
import '../bloc/create_basic_expertise_bloc/create_basic_expertise_bloc.dart';
import '../bloc/other_vehicle_inspection_bloc/other_vehicle_inspection_bloc.dart';
import 'other_vehicle_inspection_confirm_screen.dart';

class OtherVehicleInspectionInfoScreen extends StatefulWidget {
  final String plateAlphabet;
  final String region;
  final String segment1;
  final String segment2;

  const OtherVehicleInspectionInfoScreen(
      {super.key,
      required this.plateAlphabet,
      required this.region,
      required this.segment1,
      required this.segment2});

  @override
  State<OtherVehicleInspectionInfoScreen> createState() =>
      _OtherVehicleInspectionInfoScreenState();
}

class _OtherVehicleInspectionInfoScreenState
    extends State<OtherVehicleInspectionInfoScreen> {
  final TextEditingController cntName = TextEditingController();
  final TextEditingController cntFamily = TextEditingController();
  final TextEditingController cntPhone = TextEditingController();
  late OtherVehicleInspectionBloc otherVehicleInspectionBloc;
  late CreateBasicExpertiseBloc _createBasicExpertiseBloc;

  @override
  void initState() {
    super.initState();
    otherVehicleInspectionBloc = sl<OtherVehicleInspectionBloc>();
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
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
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
                    'vehicle.viewer_info'.tr(),
                    style: TextTypography.titleMedium
                        .copyWith(color: colorTheme.bgInverse),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                AppTextField(
                  customWidth: width * 0.9,
                  controller: cntName,
                  maxLength: 25,
                  label: "vehicle.viewer_name".tr(),
                  hintText: "vehicle.viewer_name_hint".tr(),
                  onChanged: (value) {
                    setState(() {
                      value = cntName.text;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextField(
                  customWidth: width * 0.9,
                  controller: cntFamily,
                  maxLength: 25,
                  label: "vehicle.viewer_family".tr(),
                  hintText: "vehicle.viewer_family_hint".tr(),
                  onChanged: (value) {
                    setState(() {
                      value = cntFamily.text;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextField(
                  customWidth: width * 0.9,
                  controller: cntPhone,
                  label: "vehicle.viewer_phone".tr(),
                  hintText: "vehicle.hint_mobile".tr(),
                  validator: (value) => Utils.validateMobile(value),
                  errorMessage: "vehicle.other_ins_phone_required".tr(),
                  isPhone: true,
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    setState(() {
                      value = cntPhone.text;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton:
          BlocConsumer<CreateBasicExpertiseBloc, CreateBasicExpertiseState>(
        bloc: _createBasicExpertiseBloc,
        listener: (context, state) => state.maybeWhen(
          loadFailure: (error) {
            return showErrorWidget(context, error.code!, error.message!);
          },
          loadSuccess: (createBasicExpertiseEntities) {
            Navigator.push(
                context,
                PageTransition(
                    child: OtherVehicleInspectionConfirmScreen(
                      phoneNo: cntPhone.text,
                    ),
                    type: PageTransitionType.leftToRight));
            return null;
          },
          orElse: () {
            return null;
          },
        ),
        builder: (BuildContext context, CreateBasicExpertiseState state) {
          final buttonLoading = state is CreateBasicExpertiseStateLoading;
          return AppButton(
            buttonType: ButtonType.isFilled,
            buttonLoading: buttonLoading,
            isFilledEnable: cntPhone.text.length == 11 &&
                    cntPhone.text.toString().startsWith("09") &&
                    cntFamily.text.isNotEmpty &&
                    cntName.text.isNotEmpty
                ? true
                : false,
            title: 'vehicle.next_level'.tr(),
            customHeight: 48,
            customWidth: width * 0.9,
            onPressed: () async {
              await showDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (context) {
                    return AppAlertDialog(
                      hasIcon: false,
                      title: "vehicle.confirm_info".tr(),
                      body:
                          "${"vehicle.confirm_info_desc".tr()}${cntPhone.text}${"vehicle.confirm_info_desc_name".tr()} ${cntName.text}  ${cntFamily.text} ${"vehicle.confirm_info_desc_plate".tr()} ${widget.segment2}${widget.plateAlphabet}${widget.segment1} ${"vehicle.confirm_iran".tr()}${widget.region}${"vehicle.confirm_info_request".tr()}",
                      buttons: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppButton(
                            buttonType: ButtonType.isFilled,
                            title: "vehicle.yes".tr(),
                            customHeight: 48,
                            customWidth: width * 0.3,
                            buttonLoading: buttonLoading,
                            onPressed: () {
                              _createBasicExpertiseBloc.add(
                                  CreateBasicExpertiseEvent
                                      .createBasicExpertiseEventCalled(
                                          createBasicExpertiseParam:
                                              CreateBasicExpertiseParam(
                                segment1: widget.segment1,
                                segment2: widget.segment2,
                                region: widget.region,
                                fullName: cntName.text.toString() +
                                    cntFamily.text.toString(),
                                plateAlphabet: widget.plateAlphabet,
                                phoneNumber: cntPhone.text.toString(),
                                channelId:
                                    'C9BF3BE3-7406-4604-9FE1-91DCD7810626',
                              )));

                              // _otherVehicleInspectionBloc.add(
                              //     OtherVehicleInspectionEvent
                              //         .otherVehicleInspectionEventCalled(
                              //             otherVehicleInspectionParam:
                              //                 OtherVehicleInspectionParam(
                              //   currentDate: ConvertDate()
                              //       .convertGregorianToJalaliWithDASH(
                              //           DateTime.now()
                              //               .toString()
                              //               .toEnglishDigit()),
                              //   fullName: cntName.text.toString() +
                              //       cntFamily.text.toString(),
                              //   phonenumber: cntPhone.text.toString(),
                              //   token: 'sampletoken',
                              //   platealphabet: widget.plateAlphabet,
                              //   region: widget.region,
                              //   segment1: widget.segment1,
                              //   segment2: widget.segment2,
                              // )));
                            },
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: TextButton(
                              child: Text(
                                "vehicle.edit_info".tr(),
                                style: TextTypography.labelLarge
                                    .copyWith(color: colorTheme.primary),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          )

                        ],
                      ),
                    );
                  });
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
