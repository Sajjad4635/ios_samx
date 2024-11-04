import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:flutter/material.dart';

class ResultItemWidget extends StatelessWidget {
  final String itemTitle;
  final String item;

  const ResultItemWidget(
      {super.key, required this.item, required this.itemTitle});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            itemTitle,
            style: TextTypography.labelMedium.copyWith(
                color: colorTheme.solidVariant, fontWeight: FontWeight.w400),
          ),
          Text(
            item,
            style:
                TextTypography.bodyMedium.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
