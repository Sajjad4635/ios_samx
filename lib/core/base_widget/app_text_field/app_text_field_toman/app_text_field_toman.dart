import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/utils/persian_numeric_convertor.dart';
import 'package:ios_samx/core/widgets/masked_text_input_formatter%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class AppTextFieldToman extends StatefulWidget {
  const AppTextFieldToman({
    super.key,
    this.controller,
    this.title,
    this.hint,
    this.customWidth,
    this.heightStyle,
    this.suffix,
    this.keyboardType,
    this.errorMessage,
    this.prefix,
    this.errorStyle,
    this.enable,
    this.isHidden,
    this.textDirection,
    this.enableBorder,
    this.fillColor,
    this.maxLine,
    this.validator,
    this.inputFormatters,
    this.onChanged,
    required this.isRial,
  });

  final TextEditingController? controller;
  final String? title;
  final String? hint;
  final double? customWidth;
  final double? heightStyle;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final String? errorMessage;
  final Widget? prefix;
  final TextStyle? errorStyle;
  final bool? enable;
  final bool? isHidden;
  final TextDirection? textDirection;
  final void Function(String)? onChanged;
  final InputBorder? enableBorder;
  final Color? fillColor;
  final int? maxLine;
  final bool isRial;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<AppTextFieldToman> createState() => _AppTextFieldTomanState();
}

class _AppTextFieldTomanState extends State<AppTextFieldToman> {
  String? value = '';

  @override
  void initState() {
    widget.controller?.addListener(() {
      setState(() {
        value = widget.controller?.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return SizedBox(
      width: widget.customWidth,
      child: Directionality(
        textDirection: widget.textDirection ?? TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.title != null
                ? Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      widget.title!,
                      style: AppStyle.size14Weight600,
                    ),
                  )
                : Container(),
            Align(
              alignment: Alignment.topCenter,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: TextFormField(
                  controller: widget.controller,
                  style:
                  TextTypography.valueInputStyle,
                  textAlign: TextAlign.end,
                  obscureText: widget.isHidden ?? false,
                  enabled: widget.enable ?? true,
                  keyboardType: widget.keyboardType,
                  inputFormatters: widget.isRial
                      ? [
                          FilteringTextInputFormatter.digitsOnly,
                           LengthLimitingTextInputFormatter(11),
                          FilteringTextInputFormatter.deny(RegExp(r'\.')),
                          MaskedTextInputFormatter(),
                        ]
                      : widget.inputFormatters,
                  validator: widget.validator,
                  autovalidateMode: widget.validator == null
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  onChanged: widget.onChanged,
                  decoration: InputDecoration(
                    isDense: false,
                    isCollapsed: widget.heightStyle == null ? false : true,
                    hintText: widget.hint,
                    filled: true,
                    fillColor: widget.fillColor ?? AppColors.fillColor,
                    hintStyle: TextTypography.labelStyle,
                    prefixIcon: widget.prefix,
                    suffixIcon: widget.suffix,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      gapPadding: 10,
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                        width: 1,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      gapPadding: 10,
                      borderSide: const BorderSide(
                        color: AppColors.error,
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      gapPadding: 10,
                      borderSide: const BorderSide(
                        color: AppColors.error,
                        width: 1,
                      ),
                    ),
                    enabledBorder: widget.enableBorder ??
                        OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                    labelStyle: TextTypography.labelStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorStyle: widget.errorStyle ??
                        TextTypography.helperTextStyle.copyWith(color: colorTheme.error),
                  ),
                  maxLines: widget.maxLine ?? 1,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              PersianNumericConvertor.convertStringRialToTomanCurrency(
                value?.extractNumber(toDigit: NumStrLanguage.English) ?? '',

              ).toPersianDigit(),
              style: TextTypography.helperTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
