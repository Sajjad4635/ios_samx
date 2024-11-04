import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/widgets/simple_rounded_container.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../core/base_widget/app_text_field/app_text_field.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';

class PassportScreen extends StatefulWidget {
  const PassportScreen({super.key});

  @override
  State<PassportScreen> createState() => _PassportScreenState();
}

class _PassportScreenState extends State<PassportScreen> {
  int selectedValue = 1;

  final TextEditingController cntName = TextEditingController();
  final TextEditingController cntFamilyName = TextEditingController();
  final TextEditingController cntFatherName = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorTheme.bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: "passport.passport_detail".tr(),
          isQrCode: false,
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                    (route) => false);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "passport.your_passport_detail".tr(),
                            style: TextTypography.titleMedium
                                .copyWith(color: AppColors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "passport.passport_data".tr(),
                              style: TextTypography.bodySmall
                                  .copyWith(color: AppColors.gray),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "passport.passport_type".tr(),
                          style: TextTypography.bodySmall
                              .copyWith(color: AppColors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 25.0),
                      child: Row(
                        children: [
                          _buildRoundedButton(
                              "passport.passport_type_normal".tr(),
                              1,
                              colorTheme,
                              width),
                          _buildRoundedButton(
                              "passport.passport_type_companion".tr(),
                              2,
                              colorTheme,
                              width),
                          _buildRoundedButton(
                              "passport.passport_type_political".tr(),
                              3,
                              colorTheme,
                              width),
                        ],
                      ),
                    ),
                    AppTextField(
                      controller: TextEditingController(text: "passportNumber"),
                      customWidth: width * 0.9,
                      label: "passport.passport_number".tr(),
                      readOnly: true,
                    ),
                    AppTextField(
                      controller: cntName,
                      customWidth: width * 0.9,
                      label: "passport.name".tr(),
                      maxLength: 50,
                    ),
                    AppTextField(
                      controller: cntFamilyName,
                      customWidth: width * 0.9,
                      label: "passport.family".tr(),
                      maxLength: 50,
                    ),
                    AppTextField(
                      controller: cntFatherName,
                      customWidth: width * 0.9,
                      label: "passport.father_name".tr(),
                      maxLength: 50,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "passport.issue_date".tr()),
                      customWidth: width * 0.9,
                      label: "passport.issue_date".tr(),
                      readOnly: true,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "passport.expire_date".tr()),
                      customWidth: width * 0.9,
                      label: "passport.expire_date".tr(),
                      readOnly: true,
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: AppButton(
        customHeight: 48,
        customWidth: width * 0.9,
        title: "passport.submit".tr(),
        isFilledEnable: true,
        onPressed: () {},
        buttonType: ButtonType.isFilled,
        bgColor: colorTheme.primary,
        isSecondaryEnable: false,
        rightIcon: null,
        leftIcon: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildRoundedButton(
      String title, int value, CustomTheme colorTheme, double width) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedValue = value;
        });
      },
      child: SimpleRoundedContainer(
        padding: 10.0,
        width: width * 0.25,
        height: 40,
        bgColor:
            selectedValue == value ? colorTheme.primary95 : colorTheme.white,
        borderRadius: 30.0,
        borderColor:
            selectedValue == value ? colorTheme.primary : colorTheme.solid,
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextTypography.titleSmall.copyWith(
                  color: selectedValue == value
                      ? colorTheme.primary
                      : colorTheme.black),
            ),
          ],
        ),
      ),
    );
  }
}
