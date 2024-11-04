import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DepositFinalCheck extends StatelessWidget {
  const DepositFinalCheck({
    super.key,
    required this.checked,
    required this.onChanged,
  });

  final bool checked;
  final Function(bool? value) onChanged;

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: width * .9,
        child: Row(
          children: [
            Checkbox(
              checkColor: colorTheme.bg,
              activeColor: colorTheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              side: const BorderSide(
                color: AppColors.primary,
              ),
              value: checked,
              onChanged: onChanged,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text("cplife.aprove_request".tr(),
                  style: AppStyle.size12Weight400),
            )
          ],
        ),
      ),
    );
  }
}
