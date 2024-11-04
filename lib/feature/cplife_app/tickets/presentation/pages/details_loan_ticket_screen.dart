import 'package:ios_samx/core/base_widget/index.dart' show AppButton, AppTextField, ButtonType;
import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/light_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class DetailsLoanTicketScreen extends StatefulWidget {
  const DetailsLoanTicketScreen({super.key});

  @override
  State<DetailsLoanTicketScreen> createState() =>
      _DetailsLoanTicketScreenState();
}

class _DetailsLoanTicketScreenState extends State<DetailsLoanTicketScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.lightWhite,
          appBar: AppBar(
            backgroundColor: AppColors.darkGray,
            elevation: 0,
            centerTitle: true,
            title: Image(
              width: width * 0.05,
              height: height * 0.5,
              image: const AssetImage(
                'assets/images/sam_logo_white.png',
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.lightGrey,
                ),
              ),
            ),
          ),
          body: SafeArea(
              child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: width * 0.9,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Text(
                        'cplife.request_details_registration'.tr(),
                        style: TextTypography.titleSmall,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      child: Text(
                        'cplife.insurance_information'.tr(),
                        style: AppStyle.size13wWeight700
                            .copyWith(color: LightTheme.textVariant),
                      ),
                    ),
                    Text(
                      '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                      style: AppStyle.size13Weight600
                          .copyWith(color: AppColors.outlineBright),
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "12345678".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.policy_code".tr(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "1402/100-100/200/205".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.full_policy_number".tr(),
                      isDropDown: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "بهاره میرباقری - 1166".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.issuing_unit_code".tr(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "بهاره میرباقری - 1166".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.identification_unit_code".tr(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "1402/01/01".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.policy_start_date".tr(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "1402/01/01".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.policy_expire_date".tr(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller:
                          TextEditingController(text: "2".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.insurance_year".tr(),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      child: Text(
                        'cplife.request_information'.tr(),
                        style: AppStyle.size13wWeight700
                            .copyWith(color: LightTheme.textVariant),
                      ),
                    ),
                    Text(
                      '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                      style: AppStyle.size13Weight600
                          .copyWith(color: AppColors.outlineBright),
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "2500000".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.prepayment_amount".tr(),
                      isRial: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "250000".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.redemption_amount".tr(),
                      isDropDown: true,
                      isRial: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "4546546464654654".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.iban_number".tr(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppTextField(
                      controller: TextEditingController(
                          text: "سعید رضوی".toPersianDigit()),
                      customWidth: width * 0.9,
                      label: "cplife.account_owner_name".tr(),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    AppButton(
                      buttonType: ButtonType.isFilled,
                      title: "cplife.reviewed_and_confirmed".tr(),
                      customHeight: 48,
                      customWidth: width * 0.9,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          )),
        ));
  }
}
