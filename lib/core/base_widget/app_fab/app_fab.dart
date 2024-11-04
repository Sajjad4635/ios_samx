import 'package:flutter/material.dart';

import '../../constant/theme/light_theme.dart';
import '../../constant/theme/typography.dart';

class AppFab extends StatelessWidget {
  final void Function()? onPressed;
  final double? customWidth;
  final double? customHeight;
  final IconData? icon;
  final Color? bgColor;
  final String? title;
  final bool isTitle;
  final bool isPrimary;

  const AppFab({
    super.key,
    required this.isTitle,
    required this.isPrimary,
    this.customHeight,
    this.customWidth,
    this.bgColor,
    this.icon,
    this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          highlightColor:
              isPrimary ? LightTheme.primary80 : LightTheme.primary95),
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        width: customWidth!,
        height: customHeight!,
        child: FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            backgroundColor: isPrimary ? LightTheme.primary95 : bgColor,
            onPressed: onPressed,

            child: isTitle
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          icon!,
                          color: LightTheme.primary,
                        ),
                        Text(
                          title!,
                          style: TextTypography.labelLarge
                              .copyWith(color: LightTheme.primary),
                        ),
                      ],
                    ),
                  )
                : Icon(
                    icon!,
                    color: LightTheme.primary,
                  )),
      ),
    );
  }
}
