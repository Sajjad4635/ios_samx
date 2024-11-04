import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:flutter/material.dart';

class WalletItemWidget extends StatelessWidget {
  const WalletItemWidget({
    super.key,
    required this.title,
    required this.path,
    required this.onTap,
    this.bgColor,
    this.height,
    this.width,
    this.style,
    this.spacing,
  });

  final String title;
  final String path;
  final Function() onTap;
  final double? height;
  final double? width;
  final TextStyle? style;
  final int? spacing;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 70,
        width: width ?? 160,
        decoration: BoxDecoration(
            color: bgColor ?? AppColors.lightBlue,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  path,
                ),
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: style ??
                  AppStyle.size14Weight600.copyWith(
                    color: Colors.blueAccent,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
