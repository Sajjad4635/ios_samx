import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class DepositFinalRequestDetail extends StatelessWidget {
  final double depositAmount;
  const DepositFinalRequestDetail({super.key, required this.depositAmount});

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              "cplife.request_information".tr(),
              style: AppStyle.size13Weight600,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Magicon.moneyBill,
                        size: 20,
                        color: colorTheme.solidVariant,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "cplife.pay_to_deposit".tr(),
                        style: TextTypography.labelLarge
                            .copyWith(color: colorTheme.textVariant),
                      )
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: depositAmount.toStringAsFixed(0).toPersianDigit().seRagham(),
                          style: TextTypography.labelLarge
                              .copyWith(color: colorTheme.text),
                        ),
                        TextSpan(
                          text: 'cplife.saved_money_currency'.tr(),
                          style: AppStyle.size12Weight400
                              .copyWith(color: AppColors.costColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
