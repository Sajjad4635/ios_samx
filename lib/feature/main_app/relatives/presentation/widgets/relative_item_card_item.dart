import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class RelativeItemCardItem extends StatelessWidget {
  const RelativeItemCardItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextTypography.bodySmall.copyWith(color: colorTheme.text),
        ),
        Text(
          value.toPersianDigit(),
          style: TextTypography.titleSmall.copyWith(color: colorTheme.text),
        ),
      ],
    );
  }
}
