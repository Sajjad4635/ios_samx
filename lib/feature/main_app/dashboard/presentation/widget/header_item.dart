import 'package:ios_samx/core/constant/app_style.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HeaderItems extends StatelessWidget {
  final double width;
  final double height;
  final double imgWidth;
  final double imgHeight;
  final String imgName;
  final Color imgColor;
  final String caption;
  final Color badgeColor;
  final int badgeCount;
  final Color backgroundColor;
  final TextStyle textStyle;
  final String tooltipMessage;
  final void Function()? onTap;

  const HeaderItems({
    super.key,
    required this.width,
    required this.height,
    required this.imgWidth,
    required this.imgHeight,
    required this.imgName,
    required this.imgColor,
    required this.caption,
    required this.textStyle,
    required this.badgeCount,
    required this.badgeColor,
    required this.backgroundColor,
    required this.tooltipMessage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topStart(top: -20, start: 10),
      showBadge: false,
      ignorePointer: false,
      onTap: () {},
      badgeContent: Text(
        badgeCount.toString(),
        style: AppStyle.size14Weight700,
      ),
      badgeAnimation: const badges.BadgeAnimation.rotation(
        animationDuration: Duration(seconds: 1),
        colorChangeAnimationDuration: Duration(seconds: 1),
        loopAnimation: false,
        curve: Curves.fastOutSlowIn,
        colorChangeAnimationCurve: Curves.easeInCubic,
      ),
      badgeStyle: badges.BadgeStyle(
        badgeColor: badgeColor,
        padding: const EdgeInsets.all(10),
        borderRadius: BorderRadius.circular(4),
        elevation: 0,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Tooltip(
          message: tooltipMessage,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  height: imgHeight,
                  width: imgWidth,
                  color: imgColor,
                  image: AssetImage(imgName),
                ),
                Text(
                  caption,
                  style: textStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
