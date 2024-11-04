import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_style.dart';

class DamageDetailContainer extends StatelessWidget {
  final double width;
  final double height;
  final double iconWidth;
  final double iconHeight;
  final String caption;
  final Color bgColor;
  final double borderRadius;
  final Color iconColor;
  final String iconName;
  final double iconSize;
  final String childIconName;
  final void Function()? iconTap;

  const DamageDetailContainer({
    super.key,
    required this.width,
    required this.height,
    required this.caption,
    required this.iconName,
    required this.bgColor,
    required this.borderRadius,
    required this.iconWidth,
    required this.iconHeight,
    required this.iconColor,
    required this.iconSize,
    required this.childIconName,
    this.iconTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: colorTheme.primary95, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: iconTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: colorTheme.primary95,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                ),
              ),
              child: Image(
                width: iconWidth,
                height: iconHeight,
                image: AssetImage(
                  iconName,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 40,
            height: 37,
            child: Image(
              fit: BoxFit.scaleDown,
              image: AssetImage(
                childIconName,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(start: 10),
            child: Text(
              caption,
              style: AppStyle.size13Weight600black,
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsetsDirectional.only(end: 10),
            child: Icon(
              size: iconSize,
              Icons.arrow_forward_ios,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
