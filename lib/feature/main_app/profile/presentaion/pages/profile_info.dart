import 'package:ios_samx/core/base_widget/app_text_field/app_text_field.dart';
import 'package:ios_samx/core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/get_risk_score/param/get_risk_score_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_detail/zipcode_detail_param/zipcode_detail_param.dart';
import 'package:ios_samx/feature/main_app/profile/domain/usecase/zipcode_update/zipcode_update_param/zipcode_update_param.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/bloc/zipcode_update/zipcode_update_bloc.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/pages/passport_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/base_widget/app_bottom_sheet/show_app_bottom_sheet.dart';
import '../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../core/base_widget/app_snack_bar/app_snack_bar.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/ball_beat_progress_indicator.dart';
import '../../../../../injection_container.dart';
import '../../domain/entities/get_profile/get_profile_response_data/get_profile_response_data.dart';
import '../../domain/entities/zipcode_detail/zipcode_response_data/zipcode_response_data.dart';
import '../bloc/get_profile/get_profile_bloc.dart';
import '../bloc/get_risk_score/get_risk_score_bloc.dart';

import '../bloc/zipcode_detail/zipcode_detail_bloc.dart';
import '../widgets/profile_data_field.dart';
import '../widgets/profile_row_widget.dart';
import '../widgets/profile_widget.dart';

class ProfileInfo extends StatefulWidget {
  final GetProfileResponseData getProfileResponseData;

  const ProfileInfo({super.key, required this.getProfileResponseData});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  String? riskScore;
  late String nationalCode = '';
  String? latestInquiry = '';
  String addressValue = '';
  bool buttonLoading = false;
  bool submitStatus = false;

  final TextEditingController cntZipCode = TextEditingController();
  ZipcodeResponseData zipcodeResponseData = const ZipcodeResponseData();
  late GetProfileBloc _getProfileBloc;
  late GetRiskScoreBloc _getRiskScoreBloc;
  late ZipcodeDetailBloc _zipcodeDetailBloc;
  late ZipcodeUpdateBloc _zipcodeUpdateBloc;

  @override
  void initState() {
    super.initState();
    Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get(Strings.nationalId);
    riskScore = box.get(Strings.riskScore);
    latestInquiry = box.get(Strings.latestRiskInquiry);
    _getRiskScoreBloc = sl<GetRiskScoreBloc>();
    _zipcodeDetailBloc = sl<ZipcodeDetailBloc>();
    _zipcodeUpdateBloc = sl<ZipcodeUpdateBloc>();
    _getProfileBloc = sl<GetProfileBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorTheme.bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: "main.personal_data".tr(),
          isQrCode: false,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => _zipcodeDetailBloc,
          ),
          BlocProvider(
            create: (context) => _zipcodeUpdateBloc,
          ),
        ],
        child: BlocListener<ZipcodeUpdateBloc, ZipcodeUpdateState>(
          bloc: _zipcodeUpdateBloc,
          listener: (context, state) {
            state.maybeWhen(
              loadFailure: (error) {
                showErrorWidget(context, error.code!, error.message!);
              },
              loadSuccess: (zipcodeUpdateEntities) {
                AppSnackBar.showSnackBar(
                  context: context,
                  type: SnackBarType.error,
                  message: 'main.update_zip_code'.tr(),
                  title: "main.close".tr(),
                );
                _getProfileBloc.add(
                  GetProfileEvent.getProfileEventCalled(
                    noParams: NoParams(),
                  ),
                );
              },
              orElse: () {},
            );
          },
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SizedBox(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        // Stack(children: [
                        //   Container(
                        //     height: 120,
                        //     width: 120,
                        //     decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color: colorTheme.bg,
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(0.7),
                        //       child: SizedBox(
                        //         child: Image.asset('assets/images/profile_icon.png',
                        //             fit: BoxFit.fill),
                        //         //  child: Image.asset('assets/images/niki.png', fit: BoxFit.fill),
                        //       ),
                        //     ),
                        //   ),
                        // Positioned(
                        //   bottom: 0,
                        //   child: Container(
                        //     height: 42,
                        //     width: 42,
                        //     decoration:   BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color:  colorTheme.bg,
                        //       border: Border.all(color: colorTheme.primary , width:1.5),
                        //     ),
                        //     child:  Padding(
                        //       padding: const EdgeInsets.all(10.0),
                        //       child: Image.asset('assets/images/camera-rotate.png'),
                        //     ) ,
                        //   ),
                        // ),
                        // ]),
                        const SizedBox(
                          height: 16,
                        ),
                        ProfileDataField(
                            caption: "main.name_and_lastname".tr(),
                            desc: widget.getProfileResponseData.firstName!
                                        .isNotEmpty ||
                                    widget.getProfileResponseData.lastName!
                                        .isNotEmpty
                                ? "${widget.getProfileResponseData.firstName} ${widget.getProfileResponseData.lastName}"
                                : "main.not_included".tr()),
                        ProfileDataField(
                            caption: "main.user_mobile_number".tr(),
                            desc: widget.getProfileResponseData.phoneNumber!
                                    .isNotEmpty
                                ? widget.getProfileResponseData.phoneNumber!
                                    .toPersianDigit()
                                : "main.not_included".tr()),
                        ProfileDataField(
                            caption: "strings.fatherName".tr(),
                            desc: widget.getProfileResponseData.fatherName!
                                    .isNotEmpty
                                ? widget.getProfileResponseData.fatherName!
                                : "main.not_included".tr()),
                        ProfileDataField(
                          caption: "main.date_of_birth".tr(),
                          desc: widget
                                  .getProfileResponseData.birthDate!.isNotEmpty
                              ? widget.getProfileResponseData.birthDate!
                                  .toPersianDate()
                              : "main.not_included".tr(),
                        ),
                        ProfileDataField(
                            caption: "strings.nationalCode".tr(),
                            desc: widget.getProfileResponseData.nationalCode!
                                    .isNotEmpty
                                ? widget.getProfileResponseData.nationalCode
                                    .toString()
                                    .toPersianDigit()
                                : "main.not_included".tr()),
                        ProfileDataField(
                            caption: "main.sh_shenasnameh".tr(),
                            desc: widget.getProfileResponseData
                                        .birthCertificateNo !=
                                    0
                                ? widget
                                    .getProfileResponseData.birthCertificateNo!
                                    .toString()
                                    .toPersianDigit()
                                : "main.not_included".tr()),
                        ProfileDataField(
                          caption: "strings.gender".tr(),
                          desc: widget.getProfileResponseData.gender == 0
                              ? "main.woman".tr()
                              : widget.getProfileResponseData.gender == 1
                                  ? "main.man".tr()
                                  : "main.not_included".tr(),
                        ),
                        ProfileRowWidget(
                            onPressedEditIcon: () async {
                              editZipCodeBtmSheet(width, colorTheme);
                            },
                            editIcon:
                                widget.getProfileResponseData.zipCode == null
                                    ? null
                                    : Magicon.edit,
                            caption: "strings.postalCode".tr(),
                            desc: widget.getProfileResponseData.zipCode == null
                                ? "main.zip_code_not_included".tr()
                                : widget.getProfileResponseData.zipCode
                                    .toString()
                                    .toPersianDigit(),
                            data: "main.address".tr(),
                            dataDesc:
                                widget.getProfileResponseData.address == null
                                    ? "main.address_not_included".tr()
                                    : widget.getProfileResponseData.address
                                        .toString()),

                        ProfileWidget(
                          caption: "main.pass_detail".tr(),
                          desc: "main.detail".tr(),
                          leftIcon: Magicon.arrowLeftSquare,
                          leftIconColor: colorTheme.primary,
                          loadingStatus: false,
                          footerDetailCaption: '',
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                PageTransition(
                                    child: const PassportScreen(),
                                    type: PageTransitionType.leftToRight),
                                (route) => false);
                          },
                        ),
                        BlocConsumer<GetRiskScoreBloc, GetRiskScoreState>(
                          bloc: _getRiskScoreBloc,
                          listener: (context, state) { state.maybeWhen(
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
                                riskScore = getRiskScoreEntities
                                    .getRiskScoreResponseData.safetyScore!
                                    .toStringAsFixed(1);

                                latestInquiry = getRiskScoreEntities
                                    .getRiskScoreResponseData.lastInquiryDate
                                    .toString();
                                final Box box = Hive.box(Strings.appDBName);

                                box.put(
                                    Strings.riskScore,
                                    getRiskScoreEntities
                                        .getRiskScoreResponseData.safetyScore!
                                        .toStringAsFixed(1));

                                box.put(
                                    Strings.latestRiskInquiry,
                                    getRiskScoreEntities
                                        .getRiskScoreResponseData
                                        .lastInquiryDate);
                              });
                            },
                            orElse: () {},
                          );
                          },
                          builder: (context, state) {
                            buttonLoading = state is GetRiskScoreStateLoading;
                            return ProfileWidget(
                              caption: 'strings.risk_score'.tr(),
                              desc: riskScore == null
                                  ? "strings.inquiry".tr()
                                  : "${riskScore.toString().toPersianDigit()} ${'strings.score'.tr()}",
                              footerDetailCaption: latestInquiry == null
                                  ? ''
                                  : 'strings.last_risk_inquiry'.tr() +
                                      latestInquiry.toString().toPersianDigit(),
                              rightIcon: Magicon.infoSquare,
                              rightIconColor: Colors.black,
                              leftIcon: riskScore == null
                                  ? Magicon.fileTextSearch
                                  : null,
                              leftIconColor: colorTheme.primary,
                              loadingStatus: buttonLoading,
                              onPressed: () async {
                                _getRiskScoreBloc.add(
                                    GetRiskScoreEvent.getRiskScoreEventCalled(
                                        getRiskScoreParam: GetRiskScoreParam(
                                            nationalCode: nationalCode,
                                            birthDate: widget
                                                .getProfileResponseData
                                                .birthDate!
                                                .toPersianDate()
                                                .toEnglishDigit())));
                              },
                              onPressedIconRight: () async {
                                riskBtmSheet(width);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> riskBtmSheet(double width) async {
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
                style: AppStyle.size14Weight600.copyWith(color: AppColors.gray),
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
  }

  Future<void> editZipCodeBtmSheet(double width, CustomTheme colorTheme) async {
    await showAppBottomSheet(
      context: context,
      child: BlocConsumer<ZipcodeDetailBloc, ZipcodeDetailState>(
        bloc: _zipcodeDetailBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (error) {
              showErrorWidget(context, error.code!, error.message!);
              setState(() {
                submitStatus = false;
              });
            },
            loadSuccess: (zipcodeEntities) {
              setState(() {
                addressValue =
                    zipcodeEntities.zipcodeResponseData.address.toString();
                submitStatus = true;
              });
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final loading = state is ZipcodeDetailStateLoading;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "main.edit_zip_code".tr(),
                    style: TextTypography.titleLarge,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "main.zip_code_update".tr(),
                    style: TextTypography.labelMedium,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  customWidth: width * 0.9,
                  controller: cntZipCode,
                  label: "strings.postalCode".tr(),
                  hintText: "strings.postalCode".tr(),
                  // isZipcode: cntZipCode.text.length <= 5 ? true :false,
                  onChanged: (value) {
                    setState(() {
                      value = cntZipCode.text;
                    });
                    value.length == 10
                        ? _zipcodeDetailBloc.add(
                            ZipcodeDetailEvent.getZipcodeDetailEventCalled(
                                zipcodeDetailParam:
                                    ZipcodeDetailParam(zipCode: value)))
                        : null;
                  },
                ),
                loading
                    ? SizedBox(
                        width: width * 0.08,
                        height: 50,
                        child: BallBeatProgressIndicator(
                          size: width * 0.03,
                          color: colorTheme.primary,
                        ))
                    : Container(
                        alignment: Alignment.topRight,
                        child: Text(
                          addressValue,
                          style: TextTypography.labelMedium,
                        ),
                      ),
                const SizedBox(
                  height: 20,
                ),
                BlocBuilder<ZipcodeUpdateBloc, ZipcodeUpdateState>(
                    bloc: _zipcodeUpdateBloc,
                    builder: (context, state) {
                      final loadSubmit = state is ZipcodeUpdateStateLoading;

                      return AppButton(
                        buttonLoading: loadSubmit,
                        buttonType: ButtonType.isFilled,
                        isFilledEnable: submitStatus ? true : false,
                        title: "main.edit_submit".tr(),
                        customHeight: 48,
                        customWidth: width * 0.9,
                        onPressed: () {
                          cntZipCode.text.length == 10
                              ? _zipcodeUpdateBloc.add(
                                  ZipcodeUpdateEvent.zipcodeUpdateEventCalled(
                                      zipcodeUpdateParam: ZipcodeUpdateParam(
                                          postCode: cntZipCode.text,
                                          address: '')))
                              : null;
                          Navigator.pop(context);
                        },
                      );
                    }),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
