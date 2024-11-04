import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/widgets/masked_text_input_formatter%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magicon/magicon.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? errorMessage;
  final double? customWidth;
  final int? maxLength;
  final String? label;
  final String? hintText;
  final String? helperText;
  final bool? enable;
  final bool isRial;
  final bool isIban;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? title;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final String? Function(String? value)? validator;
  final bool? obscureText;
  final bool? isPassword;
  final bool? isPhone;
  final bool isDropDown;
  final bool? isZipcode;

  final FocusNode? focusNode;
  final void Function()? onPressedDropDown;
  final bool readOnly;

  final void Function()? onPressedPassWord;

  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final IconData? dropDownSuffixIcon;
  final AutovalidateMode autovalidateMode;
  final void Function()? onEditingComplete;
  final void Function()? onTap;

  const AppTextField(
      {super.key,
      this.onChanged,
      this.textDirection = TextDirection.rtl,
      this.controller,
      this.label = '',
      this.customWidth,
      this.maxLength,
      this.isRial = false,
      this.isIban = false,
      this.textAlign = TextAlign.start,
      this.enable,
      this.hintText = '',
      this.focusNode,
      this.title,
      this.helperText = '',
      this.errorMessage,
      this.floatingLabelBehavior,
      this.validator,
      this.prefixIcon,
      this.suffixIcon = const SizedBox(),
      this.suffix,
      this.onPressedDropDown,
      this.onPressedPassWord,
      this.keyboardType,
      this.inputFormatters,
      this.isPassword = false,
      this.obscureText = false,
      this.isDropDown = false,
      this.dropDownSuffixIcon = Icons.arrow_drop_down,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.onEditingComplete,
      this.isPhone = false,
      this.onTap,
      this.readOnly = false,
      this.isZipcode = false});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return SizedBox(
      width: customWidth,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            title != null
                ? Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      title!,
                      style: TextTypography.bodySmall
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  )
                : Container(),
            TextFormField(
              keyboardType: keyboardType,
              focusNode: focusNode,
              onTap: onTap,
              readOnly: readOnly,
              inputFormatters: isPhone!
                  ? [
                      FilteringTextInputFormatter.digitsOnly,
                    ]
                  : isRial
                      ? [
                          FilteringTextInputFormatter.digitsOnly,
                          MaskedTextInputFormatter(),
                        ]
                      : isZipcode!
                          ? [
                              FilteringTextInputFormatter.digitsOnly,
                              FilteringTextInputFormatter.deny(RegExp("[0]")),
                              FilteringTextInputFormatter.deny(RegExp("[2]")),
                            ]
                          : inputFormatters,
              maxLength: isPhone! ? 11 : maxLength,
              controller: controller,
              textAlign: textAlign,
              enabled: enable ?? true,
              obscureText: obscureText!,
              textDirection: isIban ? TextDirection.ltr : textDirection,
              autovalidateMode: autovalidateMode,
              style: TextTypography.valueInputStyle,
              validator: validator,
              onChanged: onChanged,
              decoration: InputDecoration(
                counterText: "",
                // contentPadding: const EdgeInsets.symmetric(vertical: 20),
                floatingLabelBehavior: floatingLabelBehavior,
                hintText: hintText!,
                isCollapsed: false,
                isDense: false,

                errorStyle: TextTypography.helperTextStyle
                    .copyWith(color: colorTheme.error),
                filled: true,
                label: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Text(
                    label!,
                    style: TextTypography.labelStyle,
                  ),
                ),
                helperText: helperText,
                prefixIconConstraints: const BoxConstraints(minHeight: 25),
                helperStyle: TextTypography.helperTextStyle,
                fillColor: colorTheme.bg,
                hintStyle: TextTypography.labelStyle,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: colorTheme.borders),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: colorTheme.primary,
                    width: 2,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: colorTheme.error,
                    width: 2,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: colorTheme.error,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: colorTheme.borders,
                    width: 1,
                  ),
                ),
                prefixIcon: prefixIcon,
                suffix: suffix,
                suffixIcon: isIban
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                        child: Text('IR',
                            style: TextTypography.labelLarge
                                .copyWith(color: colorTheme.textVariant)),
                      )
                    : isRial
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ریال',
                                style: TextTypography.labelLarge.copyWith(
                                  color: colorTheme.textVariant,
                                ),
                              ),
                            ],
                          )
                        : isDropDown
                            ? IconButton(
                                onPressed: () {
                                  onPressedDropDown;
                                },
                                icon: Icon(
                                  dropDownSuffixIcon,
                                  color: colorTheme.textVariant,
                                ))
                            : isPassword!
                                ? IconButton(
                                    icon: Icon(obscureText!
                                        ? Magicon.eyeSlash
                                        : Magicon.eye),
                                    onPressed: () {
                                      onPressedPassWord!();
                                    },
                                  )
                                : isPhone!
                                    ? const Icon(Magicon.mobile)
                                    : SizedBox(
                                        height: 2,
                                        width: 2,
                                        child: suffixIcon,
                                      ),
              ),
              onEditingComplete: onEditingComplete,
            ),
          ],
        ),
      ),
    );
  }
}
