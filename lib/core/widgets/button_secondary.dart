import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_style.dart';
import 'ball_beat_progress_indicator.dart';

class ButtonSecondary extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final TextStyle? style;
  final Color? color;
  final bool buttonLoading;
  final String? assetName;

  final double? customHeight;
  final double? customWidth;

  const ButtonSecondary({
    super.key,
    required this.title,
    this.assetName,
    this.onPressed,
    this.style,
    this.color,
    this.customHeight,
    this.customWidth,
    required this.buttonLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonLoading ? () {} : onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(customWidth!, customHeight!),
        backgroundColor: color ?? Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: AppColors.primary, width: 2),
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
                  style: style ?? AppStyle.size16Weight500.copyWith(color: AppColors.primary),
                ),
                const SizedBox(
                  width: 5,
                ),
                assetName != null
                    ? Image(
                        width: 20,
                        image: AssetImage(assetName!),
                        color: AppColors.primary,
                      )
                    : const SizedBox()
              ],
            ),
    );
  }
}
