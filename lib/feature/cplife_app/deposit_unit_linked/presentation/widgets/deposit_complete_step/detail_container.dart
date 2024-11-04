import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.largeTitle = false,
    this.margin,
  });

  final EdgeInsets? margin;
  final String title;
  final String value;
  final bool? largeTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    final typography =
        largeTitle! ? TextTypography.titleMedium : TextTypography.titleSmall;

    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 16,
                color: colorTheme.solidVariant,
              ),
              const SizedBox(width: 5.5),
              Text(title,
                  style: typography.copyWith(
                    color: colorTheme.text,
                  ))
            ],
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: "$value ",
                    style: TextTypography.titleLarge
                        .copyWith(color: colorTheme.text)),
                TextSpan(
                  text: 'cplife.saved_money_currency'.tr(),
                  style: AppStyle.size12Weight400
                      .copyWith(color: AppColors.costColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
