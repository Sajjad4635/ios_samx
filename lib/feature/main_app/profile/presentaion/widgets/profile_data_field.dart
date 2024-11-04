import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_style.dart';

class ProfileDataField extends StatelessWidget {
  final String caption;
  final String desc;
  const ProfileDataField(
      {super.key, required this.caption, required this.desc});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(caption, style: AppStyle.size14Weight400costColor),
              Text(
                desc,
                style: AppStyle.size14Weight600,
              ),
            ],
          ),
        ),
         Divider(
          thickness: 1,
          color: colorTheme.borders,
        )
      ],
    );
  }
}
