import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';

import '../constant/app_colors.dart';
import '../constant/app_style.dart';
import 'ball_beat_progress_indicator.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  final bool buttonLoading;
  final double? customHeight;
  final double? customWidth;
  final TextStyle? style;
  final Color? color;
  final void Function()? onPressed;
  final IconData? icon ;
  final  double? iconWidth ;

  const ButtonPrimary({
    super.key,
    required this.title,
    this.onPressed,
    this.color,
    required this.customHeight,
    required this.customWidth,
    this.style,
    required this.buttonLoading,
    this.icon,
    this.iconWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(customWidth!, customHeight!),
        backgroundColor: color ?? AppColors.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: buttonLoading == true
          ? const BallBeatProgressIndicator(
              size: 20,
              color: Colors.white,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: style ?? AppStyle.size15Weight600.copyWith(color: Colors.white),
                ),
                  const SizedBox(width:  5),
                SizedBox(
                    child: iconWidth  == null ? Icon(icon ?? Magicon.angleLeft, color: Colors.white,) : const SizedBox()),
              ],
            ),
    );
  }
}
