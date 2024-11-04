import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DepositDescription extends StatelessWidget {
  const DepositDescription({super.key});

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      children: [
        Container(
          width: width * 0.9,
          alignment: Alignment.topRight,
          child: Text(
            "cplife.pay_to_deposit_amount".tr(),
            style: TextTypography.titleSmall,
          ),
        ),
        Container(
          width: width * 0.9,
          alignment: Alignment.topRight,
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            "cplife.amount_deposit_request".tr(),
            style: TextTypography.bodySmall
                .copyWith(color: colorTheme.textVariant),
          ),
        ),
      ],
    );
  }
}
