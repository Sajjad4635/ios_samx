import 'package:ios_samx/core/base_widget/app_text_field/index.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/pages/add_relatives_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class BirthDateFiled extends StatefulWidget {
  final TextEditingController birthDateController;
  final BirthDateCallback birthDateCallback;
  final GlobalKey<FormState> formKey;

  const BirthDateFiled(
      {super.key,
      required this.birthDateController,
      required this.birthDateCallback ,
      required this.formKey
      });

  @override
  State<BirthDateFiled> createState() => _BirthDateFiledState();
}

class _BirthDateFiledState extends State<BirthDateFiled> {
  Jalali? birthDatePicked;
  String selectedFromDate = Jalali.now().toJalaliDateTime();

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () async {
        birthDatePicked = await showPersianDatePicker(
            context: context,
            initialDate: Jalali.now(),
            firstDate: Jalali(1300, 1),
            lastDate: Jalali(Jalali.now().year, Jalali.now().month,
                Jalali.now().day, Jalali.now().hour, Jalali.now().minute + 1),
            initialEntryMode: PDatePickerEntryMode.calendarOnly,
            initialDatePickerMode: PDatePickerMode.year,
            builder: (context, child) {
              return Theme(
                data: ThemeData(
                  colorScheme: ColorScheme.light(
                    primary: colorTheme.primary,
                  ),
                  dialogTheme: const DialogTheme(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                  ),
                ),
                child: child!,
              );
            });
        if (birthDatePicked != null && birthDatePicked != selectedFromDate) {
          setState(() {
            widget.birthDateController.text =
                "${birthDatePicked?.year.toString().toPersianDigit()}/${birthDatePicked?.month.toString().toPersianDigit()}/${birthDatePicked?.day.toString().toPersianDigit()}";
            widget.birthDateCallback(birthDatePicked!);
            widget.formKey.currentState?.validate();

          });
        }
      },
      child: AppTextField(
        customWidth: width * 0.9,
        controller: widget.birthDateController,
        label: 'strings.dateOfBirth'.tr(),
        helperText: "main.fill_field_is_required".tr(),
        enable: false,
        validator: (value) {
          if (value!.isEmpty) {
            return "main.fill_field_is_required".tr();
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        suffixIcon: Container(
          margin: const EdgeInsets.all(10),
          child: Image(
            image: const AssetImage("assets/images/calendar.png"),
            color: colorTheme.textVariant,
          ),
        ),
      ),
    );
  }
}
