import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';

class HealthCentersRowItem extends StatelessWidget {
  const HealthCentersRowItem({
    super.key,
    required this.title,
    required this.field,
    required this.city,
    required this.space,
  });

  final String title;
  final String field;

  final String city;
  final double space;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      crossAxisAlignment:
          space > 10 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: AppStyle.size13Weight600,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              field,
              style: AppStyle.size10Weight400.copyWith(color: colorTheme.textVariant),
            ),
            SizedBox(width: space),
            Text(
              city,
              style: AppStyle.size10Weight400.copyWith(color: colorTheme.textVariant),
              maxLines: 6,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ],
    );
  }
}
