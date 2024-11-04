import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WithdrawDescription extends StatelessWidget {
  const WithdrawDescription({super.key});

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
            "cplife.withdraw_request_amount".tr(),
            style: AppStyle.size13Weight600,
          ),
        ),
        Container(
          width: width * 0.9,
          alignment: Alignment.topRight,
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            "cplife.complete_request_withdraw".tr(),
            style: AppStyle.size12Weight400Black
                .copyWith(color: colorTheme.textVariant),
          ),
        ),
      ],
    );
  }
}
