import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class AppStepperItem extends StatelessWidget {
  const AppStepperItem({
    super.key,
    required this.title,
    required this.activeStep,
    required this.caption,
  });

  final String title;
  final String caption;
  final bool activeStep;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return Column(
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: activeStep ? colorTheme.primary : colorTheme.solid,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Text(
            title.toPersianDigit(),
            style: AppStyle.size14Weight600.copyWith(color: colorTheme.bg),
          )),
        ),
        const SizedBox(height: 4),
        Text(
          textAlign: TextAlign.center,
          caption,
          style: AppStyle.size8Weight300.copyWith(
            fontWeight: FontWeight.w600,
            color: colorTheme.text,
          ),
        ).tr(),
      ],
    );
  }
}
