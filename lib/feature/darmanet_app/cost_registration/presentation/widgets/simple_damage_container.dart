import 'package:ios_samx/core/constant/app_style.dart';
import 'package:flutter/material.dart';

class SimpleDamageContainer extends StatelessWidget {
  final double width;
  final double iconWidth;
  final String caption;
  final Color bgColor;
  final String? subTitle;
  final double borderRadius;
  final Color borderColor;
  final Color iconColor;
  final String iconName;
  final TextStyle? textStyle;

  final void Function()? onTap;

  const SimpleDamageContainer(
      {super.key,
      required this.width,
      required this.caption,
      required this.iconName,
      required this.bgColor,
      required this.borderRadius,
      required this.iconWidth,
      required this.borderColor,
      required this.iconColor,
      this.subTitle,
      this.onTap,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                width: iconWidth,
                image: AssetImage(
                  iconName,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(
                          top: 18.0,
                          start: 8.0,
                          bottom: 18,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              caption,
                              style: textStyle,
                            ),
                            Text(
                              subTitle!,
                              style: AppStyle.size12Weight400costColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: iconColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
