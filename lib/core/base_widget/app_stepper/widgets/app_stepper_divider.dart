import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class AppStepperDivider extends StatelessWidget {
  const AppStepperDivider({
    super.key,
    required this.activeStep,
  });

  final bool activeStep;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Expanded(
      child: SizedBox(
        height: 32,
        child: Divider(
          color: activeStep ? colorTheme.primary : colorTheme.solid,
          indent: 8,
          endIndent: 8,
          thickness: 2,
        ),
      ),
    );
  }
}
