import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';

class ProfileRowWidget extends StatelessWidget {
  final String caption;
  final String desc;
  final String data;
  final String dataDesc;
  final IconData? editIcon;
  final void Function()? onPressedEditIcon;

  const ProfileRowWidget(
      {super.key,
      required this.caption,
      required this.desc,
      required this.data,
      required this.dataDesc,
      this.editIcon,
      this.onPressedEditIcon});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(caption, style: AppStyle.size14Weight400costColor),
            const Spacer(),
            Text(
              desc,
              style: AppStyle.size14Weight600,
            ),
            editIcon == null
                ? const SizedBox()
                : IconButton(
                    onPressed: onPressedEditIcon,
                    color: colorTheme.primary,
                    icon: Icon(editIcon),
                  ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(data, style: AppStyle.size14Weight400costColor),
            Text(
              dataDesc,
              style: AppStyle.size13Weight600,
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: colorTheme.borders,
        )
      ],
    );
  }
}
