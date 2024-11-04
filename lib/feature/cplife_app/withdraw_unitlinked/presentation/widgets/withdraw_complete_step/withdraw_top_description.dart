import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WithdrawTopDescription extends StatelessWidget {
  const WithdrawTopDescription({super.key});

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      children: [
        Container(
          width: width * 0.9,
          alignment: Alignment.topRight,
          margin: const EdgeInsets.only(top: 4.0),
          child: Text(
            "cplife.last_price_unit".tr(),
            style: AppStyle.size10Weight400Black
                .copyWith(color: colorTheme.textVariant),
          ),
        ),
        const Divider(height: 16),
        const SizedBox(height: 32),
      ],
    );
  }
}
