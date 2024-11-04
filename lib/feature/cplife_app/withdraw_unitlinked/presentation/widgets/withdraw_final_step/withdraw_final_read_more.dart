import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_read_more_item.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response_data/life_insurances_response_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';

class WithdrawFinalReadMore extends StatelessWidget {
  final LifeInsurancesResponseData lifeInsurancesResponseData;
  const WithdrawFinalReadMore(
      {super.key, required this.lifeInsurancesResponseData});

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: width * 0.9,
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "cplife.insurance_detail".tr(),
                  style: AppStyle.size13Weight600,
                ),
                InkWell(
                  onTap: () async {
                    await showInfoWidget(
                      context: context,
                      lifeInsurancesResponseData: lifeInsurancesResponseData,
                    );
                  },
                  child: Text(
                    "cplife.show_more".tr(),
                    style: AppStyle.size12Weight500
                        .copyWith(color: colorTheme.primary),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future showInfoWidget(
    {required BuildContext context,
    required LifeInsurancesResponseData lifeInsurancesResponseData}) async {
  double width = ResponsiveLayout.getDeviceType(context);
  return await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox.shrink(),
                    Text("cplife.insurance_detail".tr(),
                        style: TextTypography.titleMedium),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Magicon.angleDown),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              DepositFinalReadMoreItem(
                title: 'cplife.policy_code_title'.tr(),
                value: lifeInsurancesResponseData.policyId.toString(),
                icon: Magicon.papers,
              ),
              DepositFinalReadMoreItem(
                title: 'cplife.full_policy_number_title'.tr(),
                value: lifeInsurancesResponseData.fullBNO.toString(),
                icon: Magicon.papersText,
              ),
              DepositFinalReadMoreItem(
                title: 'cplife.issuer_code_title'.tr(),
                value: lifeInsurancesResponseData.agentCode.toString(),
                icon: Magicon.buildingCoins,
              ),
              DepositFinalReadMoreItem(
                title: 'cplife.identification_unit_code_title'.tr(),
                value: lifeInsurancesResponseData.issuerCode.toString(),
                icon: Magicon.building,
              ),
              DepositFinalReadMoreItem(
                title: 'cplife.policy_start_date_title'.tr(),
                value: lifeInsurancesResponseData.beginDate,
                icon: Magicon.calendar,
              ),
              DepositFinalReadMoreItem(
                title: 'cplife.policy_expire_date_title'.tr(),
                value: lifeInsurancesResponseData.endDate,
                icon: Magicon.calendar,
              ),
              DepositFinalReadMoreItem(
                title: 'cplife.insurance_year_title'.tr(),
                value: lifeInsurancesResponseData.insuranceYear.toString(),
                icon: Magicon.hourglass,
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ButtonPrimary(
                  title: "cplife.close_button".tr(),
                  customHeight: 48,
                  buttonLoading: false,
                  iconWidth: 0,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  customWidth: double.infinity,
                ),
              ),
              const SizedBox(height: 40)
            ],
          ),
        );
      });
}
