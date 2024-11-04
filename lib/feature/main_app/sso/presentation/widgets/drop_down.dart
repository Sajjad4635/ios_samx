import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:shamsi_date/shamsi_date.dart';

class DropdownDatePicker extends StatefulWidget {
  final TextStyle? textStyle;
  final BoxDecoration? boxDecoration;
  final InputDecoration? inputDecoration;
  final Icon? icon;
  final int? startYear;
  final int? endYear;
  final double width;
  final ValueChanged<String?>? onChangedDay;
  final ValueChanged<String?>? onChangedMonth;
  final ValueChanged<String?>? onChangedYear;
  final String errorDay;
  final String errorMonth;
  final String errorYear;
  final String hintMonth;
  final String hintYear;
  final String hintDay;
  final TextStyle? hintTextStyle;
  final bool isFormValidator;
  final bool isExpanded;
  final int? selectedDay;
  final int? selectedMonth;
  final int? selectedYear;
  final bool isDropdownHideUnderline;
  final String locale;
  final bool showYear;
  final bool showMonth;
  final bool showDay;
  final int monthFlex;
  final int dayFlex;
  final int yearFlex;

  DropdownDatePicker(
      {Key? key,
      this.textStyle,
      this.boxDecoration,
      this.inputDecoration,
      this.icon,
      this.startYear,
      this.endYear,
      this.width = 12.0,
      this.onChangedDay,
      this.onChangedMonth,
      this.onChangedYear,
      this.isDropdownHideUnderline = false,
      this.errorDay = 'روز',
      this.errorMonth = 'ماه',
      this.errorYear = 'سال',
      this.hintMonth = 'ماه',
      this.hintDay = 'روز',
      this.hintYear = 'سال',
      this.hintTextStyle,
      this.isFormValidator = false,
      this.isExpanded = true,
      this.selectedDay,
      this.selectedMonth,
      this.selectedYear,
      this.locale = 'en',
      this.showDay = true,
      this.showMonth = true,
      this.showYear = true,
      this.monthFlex = 2,
      this.dayFlex = 1,
      this.yearFlex = 2})
      : assert(["en", "zh_CN", "it_IT", "de_DE", "tr", 'fr_FR', 'es_ES']
            .contains(locale)),
        super(key: key);

  @override
  _DropdownDatePickerState createState() => _DropdownDatePickerState();
}

class _DropdownDatePickerState extends State<DropdownDatePicker> {
  var monthselVal = '';
  var dayselVal = '';
  String yearsVal = '';
  int daysIn = 32;

  late String dayValueFinal;
  late String monthValueFinal;
  late String yearValueFinal;

  late List listdates = [];
  late List listyears = [];

  List<dynamic> listMonthsEn = [
    {"id": 1, "value": "فروردین"},
    {"id": 2, "value": "اردیبهشت"},
    {"id": 3, "value": "خرداد"},
    {"id": 4, "value": "تیر"},
    {"id": 5, "value": "مرداد"},
    {"id": 6, "value": "شهریور"},
    {"id": 7, "value": "مهر"},
    {"id": 8, "value": "آبان"},
    {"id": 9, "value": "آذر"},
    {"id": 10, "value": "دی"},
    {"id": 11, "value": "بهمن"},
    {"id": 12, "value": "اسفند"}
  ];

  @override
  void initState() {
    super.initState();
    dayselVal = widget.selectedDay != null ? widget.selectedDay.toString() : '';
    monthselVal =
        widget.selectedMonth != null ? widget.selectedMonth.toString() : '';
    yearsVal =
        widget.selectedYear != null ? widget.selectedYear.toString() : '';
    listdates = Iterable<int>.generate(daysIn).skip(1).toList();

    listyears =
        Iterable<int>.generate((widget.endYear ?? Jalali.now().year) + 1)
            .skip(widget.startYear ?? 1300)
            .toList()
            .reversed
            .toList();
  }

  ///Month selection dropdown function
  monthSelected(value) {
    // widget.onChangedMonth!(value);
    monthselVal = value;
    int days = daysInMonth(
        yearsVal == '' ? DateTime.now().year : int.parse(yearsVal),
        int.parse(value));
    listdates = Iterable<int>.generate(days + 1).skip(1).toList();
    checkDates(days);
    update();
  }

  void checkDates(days) {
    // Check if the selected date is not null
    if (dayselVal != '') {
      // Check if the selected date is greater than the number of days
      if (int.parse(dayselVal) > days) {
        // If the selected date is greater than the number of days, clear the selected date
        dayselVal = '';
        widget.onChangedDay!('');
        update();
      }
    }
  }

  int daysInMonth(year, month) => DateTimeRange(
          start: DateTime(year, month, 1), end: DateTime(year, month + 1))
      .duration
      .inDays;

  daysSelected(value) {
    dayselVal = value;
    update();
  }

  yearsSelected(value) {
    yearsVal = value;

    if (monthselVal != '') {
      int days = daysInMonth(
          yearsVal == '' ? DateTime.now().year : int.parse(yearsVal),
          int.parse(monthselVal));
      listdates = Iterable<int>.generate(days + 1).skip(1).toList();
      // checkDates(days);
      update();
    }

    update();
  }

  ///update function
  update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.showYear)
              Expanded(
                flex: widget.yearFlex,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.fillColor,
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    child: SizedBox(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: yearDropdown(),
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(
              width: 5,
            ),
            if (widget.showMonth)
              Expanded(
                flex: widget.monthFlex,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.fillColor,
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    child: SizedBox(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: monthDropdown(),
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(
              width: 5,
            ),
            if (widget.showDay)
              Expanded(
                flex: widget.dayFlex,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.fillColor,
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    child: SizedBox(
                        child: ButtonTheme(
                      alignedDropdown: true,
                      child: dayDropdown(),
                    )),
                  ),
                ),
              ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            print(ConvertDate()
                .convertJalaliToGregorian(yearsVal, monthselVal, dayselVal));
          },
          child: const Text('convert'),
        ),
      ],
    );
  }

  ///month dropdown
  DropdownButtonFormField<String> monthDropdown() {
    return DropdownButtonFormField<String>(
        isExpanded: widget.isExpanded,
        hint: Text(
          widget.hintMonth,
          style: AppStyle.size14Weight400,
        ),
        value: monthselVal == '' ? null : monthselVal,
        onChanged: (monthValue) {
          print(monthValue);
          monthSelected(monthValue);

        },
        validator: (value) {
          return widget.isFormValidator
              ? value == null
                  ? widget.errorMonth
                  : null
              : null;
        },
        items: listMonthsEn.map((item) {
          return DropdownMenuItem<String>(
            value: item["id"].toString(),
            child: Text(
              item["value"].toString(),
              style: AppStyle.size14Weight400,
            ),
          );
        }).toList());
  }

  ///year dropdown
  DropdownButtonFormField<String> yearDropdown() {
    return DropdownButtonFormField<String>(
        hint: Text(
          widget.hintYear,
          style: AppStyle.size14Weight400,
        ),
        isExpanded: true,
        value: yearsVal == '' ? null : yearsVal,
        onChanged: (yearValue) {
          yearsSelected(yearValue);
          print(yearValue);
        },
        items: listyears.map((item) {
          return DropdownMenuItem<String>(
            value: item.toString(),
            child: Text(
              item.toString().toPersianDigit(),
              style: AppStyle.size14Weight400,
            ),
          );
        }).toList());
  }

  ///day dropdown
  DropdownButtonFormField<String> dayDropdown() {
    return DropdownButtonFormField<String>(
        hint: Text(
          widget.hintDay,
          style: AppStyle.size14Weight400,
        ),
        isExpanded: widget.isExpanded,
        value: dayselVal == '' ? null : dayselVal,
        onChanged: (dayValue) {
          print(dayValue);
          // daysSelected(dayValue);
          setState(() {
            dayValueFinal = dayValue!;
          });
        },
        validator: (value) {
          return widget.isFormValidator
              ? value == null
                  ? widget.errorDay
                  : null
              : null;
        },
        items: listdates.map((item) {
          return DropdownMenuItem<String>(
            value: item.toString(),
            child: Text(
              item.toString().toPersianDigit(),
              style: AppStyle.size14Weight400,
            ),
          );
        }).toList());
  }

  Widget w(double count) => SizedBox(width: count);
}
