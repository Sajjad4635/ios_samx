import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:flutter/services.dart';

import 'masked_text_input_formatter .dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? title;
  final String? hint;
  final double? customWidth;
  final double? heightStyle;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final String? errorMessage;
  final Widget? prefix;
  final int? maxLength;
  final TextStyle? errorStyle;

  final bool? enable;
  final bool? isHidden;
  final TextDirection? textDirection;
  void Function(String)? onChanged;
  InputBorder? enableBorder;
  Color? fillColor;
  final int? maxLine;
  final bool isRial;
  String? Function(String?)? validator;
  List<TextInputFormatter>? inputFormatters;

  CustomTextFormField({
    super.key,
    this.maxLength,
    this.isRial = false,
    this.maxLine,
    this.controller,
    this.hint,
    this.customWidth,
    this.heightStyle,
    this.suffix,
    this.keyboardType,
    this.prefix,
    this.enable,
    this.onChanged,
    this.isHidden,
    required this.errorMessage,
    this.textDirection,
    this.title,
    this.enableBorder,
    this.fillColor,
    this.validator,
    this.inputFormatters,
    this.errorStyle,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return SizedBox(
      width: customWidth,
      child: Directionality(
        textDirection: textDirection ?? TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null
                ? Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerRight,
                    child: Text(
                      title!,
                      style: AppStyle.size14Weight600,
                    ),
                  )
                : Container(),
            Align(
              alignment: Alignment.topCenter,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: TextFormField(
                  maxLength: maxLength,
                  controller: controller,
                  textAlign: TextAlign.end,
                  obscureText: isHidden ?? false,
                  enabled: enable ?? true,
                  keyboardType: keyboardType,
                  inputFormatters: isRial
                      ? [
                          FilteringTextInputFormatter.deny(RegExp(r'\.')),
                          MaskedTextInputFormatter()
                        ]
                      : inputFormatters,
                  validator: validator,
                  autovalidateMode: validator == null
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  onChanged: onChanged,
                  style: TextTypography.valueInputStyle,
                  decoration: InputDecoration(
                    isDense: true,
                    isCollapsed: heightStyle == null ? false : true,
                    hintText: hint,
                    filled: true,
                    fillColor: fillColor ?? AppColors.fillColor,
                    hintStyle: TextTypography.labelStyle.copyWith(height: heightStyle),
                    prefixIcon: prefix,
                    suffixIcon: suffix,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      gapPadding: 10,
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                        width: 1,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      gapPadding: 10,
                      borderSide: const BorderSide(
                        color: AppColors.error,
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      gapPadding: 10,
                      borderSide: const BorderSide(
                        color: AppColors.error,
                        width: 1,
                      ),
                    ),
                    enabledBorder: enableBorder ??
                        OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                    labelStyle: TextTypography.labelStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    errorStyle: errorStyle ??
                        TextTypography.helperTextStyle.copyWith(color: colorTheme.error),
                  ),
                  maxLines: maxLine ?? 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
