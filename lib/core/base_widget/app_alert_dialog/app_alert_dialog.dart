import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  final bool hasIcon;
  final Widget? icon;
  final String title;
  final String body;
  final bool? hasCheckBox;
  final bool? chBoxValue;
  final String? chBoxDesc;
  final void Function(bool? value)? onPressedChBox;
  final Widget buttons;
  final Widget? chBoxWidget;

  const AppAlertDialog({super.key,
    required this.hasIcon,
    required this.title,
    required this.body,
    this.hasCheckBox = false,
    this.chBoxValue,
    this.icon,
    this.chBoxDesc,
    this.chBoxWidget,
    this.onPressedChBox,
    required this.buttons});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return AlertDialog(
        scrollable: true,
        backgroundColor: colorTheme.white,
        actionsAlignment: MainAxisAlignment.center,
        contentPadding: const EdgeInsets.all(0.0),
        content: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                color: colorTheme.white),
            child: Column(
              children: [
                hasIcon
                    ? Padding(
                    padding: const EdgeInsets.only(bottom: 10), child: icon)
                    : const SizedBox.shrink(),
                Align(
                  alignment: hasIcon ? Alignment.center : Alignment.topRight,
                  child: Text(
                    title,
                    style: TextTypography.titleLarge
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  body,
                  style: TextTypography.labelLarge.copyWith(
                      color: colorTheme.textVariant,
                      fontWeight: FontWeight.w400),
                ),
                hasCheckBox!
                // chBoxWidget!
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      side:
                      BorderSide(color: colorTheme.primary, width: 2),
                      value: chBoxValue,
                      onChanged: (bool? value) {
                        onPressedChBox!(chBoxValue);
                      },
                    ),
                    Text(
                      chBoxDesc!,
                      style: TextTypography.labelMedium,
                    )
                  ],
                )
                    : const SizedBox.shrink(),
                const SizedBox(
                  height: 30,
                ),
                buttons
              ],
            ),
          ),
        ));
  }
}
