import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/widgets/ball_beat_progress_indicator.dart';
import 'package:flutter/material.dart';

enum ButtonType { isFilled, isText, isOutlined, isSecondary, isSecondaryError }

class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final ButtonType buttonType;
  final bool? buttonLoading;
  final double? customHeight;
  final double? customWidth;
  final IconData? rightIcon;
  final IconData? leftIcon;
  final bool isFilledEnable;

  final bool isOutlinedEnable;
  final bool isTextEnable;
  final bool isSecondaryEnable;
  final Color? bgColor;
  final String? title;
  final TextStyle? style;

  const AppButton({
    super.key,
    required this.buttonType,
    required this.title,
    required this.customHeight,
    required this.customWidth,
    required this.onPressed,
    this.buttonLoading = false,
    this.bgColor,
    this.style,
    this.rightIcon,
    this.leftIcon,
    this.isSecondaryEnable = true,
    this.isFilledEnable = true,
    this.isOutlinedEnable = true,
    this.isTextEnable = true,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    if (buttonType == ButtonType.isFilled) {
      return ElevatedButton(
        onPressed: buttonLoading!
            ? null
            : isFilledEnable
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(customWidth!, customHeight!),
          backgroundColor:bgColor ?? (isFilledEnable ? colorTheme.primary : colorTheme.solid),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: buttonLoading == true
            ? BallBeatProgressIndicator(
                size: 20,
                color: colorTheme.white,
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
                          color: isFilledEnable
                              ? colorTheme.onPrimary
                              : colorTheme.textVariant,
                        ),
                  Text(
                    title!,
                    style: TextTypography.labelLarge.copyWith(
                        color: isFilledEnable
                            ? colorTheme.onPrimary
                            : colorTheme.textVariant),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  leftIcon == null
                      ? const SizedBox()
                      : Icon(
                          leftIcon,
                          color: isFilledEnable
                              ? colorTheme.onPrimary
                              : colorTheme.textVariant,
                        ),
                ],
              ),
      );
    } else if (buttonType == ButtonType.isSecondary) {
      return ElevatedButton(
        onPressed: buttonLoading!
            ? null
            : isSecondaryEnable
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(customWidth!, customHeight!),
          backgroundColor: colorTheme.primary95,
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
                    color: colorTheme.onPrimaryContainer,
                  ),
            Text(
              title!,
              style: TextTypography.labelLarge
                  .copyWith(color: colorTheme.onPrimaryContainer),
            ),
            const SizedBox(
              width: 5,
            ),
            leftIcon == null
                ? const SizedBox()
                : Icon(
                    leftIcon,
                    color: colorTheme.onPrimaryContainer,
                  ),
          ],
        ),
      );
    } else if (buttonType == ButtonType.isSecondaryError) {
      return ElevatedButton(
        onPressed: buttonLoading!
            ? null
            : isSecondaryEnable
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(customWidth!, customHeight!),
          backgroundColor: colorTheme.errorContainer,
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
                    color: colorTheme.onPrimaryContainer,
                  ),
            Text(
              title!,
              style: TextTypography.labelLarge
                  .copyWith(color: const Color(0xffAA1B18)),
            ),
            const SizedBox(
              width: 5,
            ),
            leftIcon == null
                ? const SizedBox()
                : Icon(
                    leftIcon,
                    color: colorTheme.onPrimaryContainer,
                  ),
          ],
        ),
      );
    } else if (buttonType == ButtonType.isOutlined) {
      return ElevatedButton(
        onPressed: buttonLoading!
            ? null
            : isOutlinedEnable
                ? onPressed
                : null,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(customWidth!, customHeight!),
          backgroundColor: colorTheme.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
                color: isOutlinedEnable ? colorTheme.primary : colorTheme.solid,
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
                    color: isOutlinedEnable
                        ? colorTheme.primary
                        : colorTheme.solid,
                  ),
            Text(
              title!,
              style: TextTypography.labelLarge.copyWith(
                  color:
                      isOutlinedEnable ? colorTheme.primary : colorTheme.solid),
            ),
            const SizedBox(
              width: 5,
            ),
            leftIcon == null
                ? const SizedBox()
                : Icon(
                    leftIcon,
                    color: isOutlinedEnable
                        ? colorTheme.primary
                        : colorTheme.solid,
                  ),
          ],
        ),
      );
    } else if (buttonType == ButtonType.isText) {
      return ElevatedButton(
        onPressed: buttonLoading!
            ? null
            : isTextEnable
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
                    color: isTextEnable ? colorTheme.primary : colorTheme.solid,
                  ),
            Text(
              title!,
              style: TextTypography.labelLarge.copyWith(
                  color: isTextEnable ? colorTheme.primary : colorTheme.solid),
            ),
            const SizedBox(
              width: 5,
            ),
            leftIcon == null
                ? const SizedBox()
                : Icon(
                    leftIcon,
                    color: isTextEnable ? colorTheme.primary : colorTheme.solid,
                  ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
