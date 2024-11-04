import 'package:ios_samx/core/constant/theme/light_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/widgets/ball_beat_progress_indicator.dart';
import 'package:flutter/material.dart';

enum ButtonErrorType {
  isFilledError,
  isTextError,
  isOutlinedError,
  isSecondaryError
}

class AppErrorButton extends StatelessWidget {
  final void Function()? onPressed;
  final ButtonErrorType buttonErrorType;
  final bool? buttonErrorLoading;
  final double? customHeight;
  final double? customWidth;
  final IconData? rightIcon;
  final IconData? leftIcon;
  final bool isErrorFilledEnable;
  final bool isErrorEnable;
  final bool isErrorOutlinedEnable;
  final bool isErrorTextEnable;
  final bool isErrorSecondaryEnable;
  final Color? bgColor;
  final String? title;
  final TextStyle? style;

  const AppErrorButton(
      {super.key,
      required this.buttonErrorType,
      required this.title,
      required this.customHeight,
      required this.customWidth,
      required this.onPressed,
      this.buttonErrorLoading = false,
      this.bgColor,
      this.style,
      this.rightIcon,
      this.leftIcon,
      this.isErrorSecondaryEnable = true,
      this.isErrorFilledEnable = true,
      this.isErrorOutlinedEnable = true,
      this.isErrorTextEnable = true,
      this.isErrorEnable = true});

  @override
  Widget build(BuildContext context) {
    if (buttonErrorType == ButtonErrorType.isFilledError) {
      return ElevatedButton(
        onPressed: buttonErrorLoading!
            ? null
            : isErrorFilledEnable
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(customWidth!, customHeight!),
          backgroundColor:
              isErrorFilledEnable ? LightTheme.error : LightTheme.solid,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: buttonErrorLoading == true
            ? const BallBeatProgressIndicator(
                size: 20,
                color: Colors.white,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  rightIcon == null
                      ? const SizedBox()
                      : Icon(
                          rightIcon,
                          color: isErrorFilledEnable
                              ? LightTheme.onError
                              : LightTheme.textVariant,
                        ),
                  Text(
                    title!,
                    style: TextTypography.labelLarge.copyWith(
                        color: isErrorFilledEnable
                            ? LightTheme.onError
                            : LightTheme.textVariant),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  leftIcon == null
                      ? const SizedBox()
                      : Icon(
                          leftIcon,
                          color: isErrorFilledEnable
                              ? LightTheme.onError
                              : LightTheme.textVariant,
                        ),
                ],
              ),
      );
    } else if (buttonErrorType == ButtonErrorType.isSecondaryError) {
      return ElevatedButton(
        onPressed: buttonErrorLoading!
            ? null
            : isErrorSecondaryEnable
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(customWidth!, customHeight!),
          backgroundColor: LightTheme.errorContainer,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 5,
            ),
            rightIcon == null
                ? const SizedBox()
                : Icon(
                    leftIcon,
                    color: LightTheme.onErrorContainer,
                  ),
            Text(
              title!,
              style: TextTypography.labelLarge
                  .copyWith(color: LightTheme.onErrorContainer),
            ),
            const SizedBox(
              width: 5,
            ),
            leftIcon == null
                ? const SizedBox()
                : Icon(
                    leftIcon,
                    color: LightTheme.onErrorContainer,
                  ),
          ],
        ),
      );
    } else if (buttonErrorType == ButtonErrorType.isOutlinedError) {
      return ElevatedButton(
        onPressed: buttonErrorLoading!
            ? null
            : isErrorOutlinedEnable
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(customWidth!, customHeight!),
          backgroundColor: LightTheme.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
                color:
                    isErrorOutlinedEnable ? LightTheme.error : LightTheme.solid,
                width: 1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 5,
            ),
            rightIcon == null
                ? const SizedBox()
                : Icon(
                    rightIcon,
                    color: isErrorOutlinedEnable
                        ? LightTheme.error
                        : LightTheme.solid,
                  ),
            Text(
              title!,
              style: TextTypography.labelLarge.copyWith(
                  color: isErrorOutlinedEnable
                      ? LightTheme.error
                      : LightTheme.solid),
            ),
            const SizedBox(
              width: 5,
            ),
            leftIcon == null
                ? const SizedBox()
                : Icon(
                    leftIcon,
                    color: isErrorOutlinedEnable
                        ? LightTheme.error
                        : LightTheme.solid,
                  ),
          ],
        ),
      );
    } else if (buttonErrorType == ButtonErrorType.isTextError) {
      return ElevatedButton(
        onPressed: buttonErrorLoading!
            ? null
            : isErrorTextEnable
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(customWidth!, customHeight!),
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 5,
            ),
            rightIcon == null
                ? const SizedBox()
                : Icon(
                    rightIcon,
                    color:
                        isErrorTextEnable ? LightTheme.error : LightTheme.solid,
                  ),
            Text(
              title!,
              style: TextTypography.labelLarge.copyWith(
                  color:
                      isErrorTextEnable ? LightTheme.error : LightTheme.solid),
            ),
            const SizedBox(
              width: 5,
            ),
            leftIcon == null
                ? const SizedBox()
                : Icon(
                    leftIcon,
                    color:
                        isErrorTextEnable ? LightTheme.error : LightTheme.solid,
                  ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
