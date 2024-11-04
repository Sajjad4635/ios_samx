import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class DepositFinalReadMoreItem extends StatelessWidget {
  const DepositFinalReadMoreItem({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return SizedBox(
      child: Padding(
          padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 20,
                    color: colorTheme.solidVariant,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: TextTypography.labelLarge
                        .copyWith(color: colorTheme.textVariant),
                  )
                ],
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: value.toPersianDigit(),
                      style: TextTypography.titleSmall
                          .copyWith(color: colorTheme.text),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
