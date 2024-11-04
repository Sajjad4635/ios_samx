import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class DepositFinalFullNumber extends StatelessWidget {
  final String fullBNO;
  const DepositFinalFullNumber({super.key, required this.fullBNO});

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      children: [
        const SizedBox(height: 24),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
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
                      'cplife.full_number_insurance'.tr(),
                      style: TextTypography.labelLarge.copyWith(color: colorTheme.textVariant),
                    )
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: fullBNO.toPersianDigit(),
                        style: TextTypography.titleSmall.copyWith(color: colorTheme.text),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
