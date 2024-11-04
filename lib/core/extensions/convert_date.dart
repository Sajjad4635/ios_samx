import 'package:intl/intl.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ConvertDate {
  NumberFormat formatter = NumberFormat("00");

  String format2(Date d) {
    final f = d.formatter;
    return '${f.yyyy}/${f.mm}/${f.dd}';
  }

  convertJalaliToGregorian(String year, String month, String day) {
    Jalali jalaliDate = Jalali(
        int.parse(year.toEnglishDigit()),
        int.parse(formatter.format(int.parse(month.toEnglishDigit()))),
        int.parse(formatter.format(int.parse(day.toEnglishDigit()))));

    Gregorian g2 = jalaliDate.toGregorian();

    return g2;
  }

  convertJalaliToGregorianString(String year, String month, String day) {
    Jalali jalaliDate = Jalali(
        int.parse(year.toEnglishDigit()),
        int.parse(formatter.format(int.parse(month.toEnglishDigit()))),
        int.parse(formatter.format(int.parse(day.toEnglishDigit()))));

    Gregorian g2 = jalaliDate.toGregorian();

    return "${g2.year}-${g2.month}-${g2.day}";
  }

  convertJalaliToGregorianTwoNumber(String year, String month, String day) {
    Jalali jalaliDate = Jalali(
        int.parse(year.toEnglishDigit()),
        int.parse(formatter.format(int.parse(month.toEnglishDigit()))),
        int.parse(formatter.format(int.parse(day.toEnglishDigit()))));

    String formattedDate = jalaliToGregorianDateString(jalaliDate);

    return formattedDate;
  }

  String jalaliToGregorianDateString(Jalali jalaliDate) {
    DateTime dateTime = jalaliDate.toDateTime();
    String year = dateTime.year.toString();
    String month = dateTime.month.toString().padLeft(2, '0');
    String day = dateTime.day.toString().padLeft(2, '0');
    String formattedDate = '$year-$month-$day';
    return formattedDate;
  }

  String convertGregorianToJalali(String date) {
    DateTime gregorianDate = DateTime.parse(date);
    var jalali = Jalali.fromDateTime(gregorianDate);
    return '${jalali.year.toString().toPersianDigit()}/${jalali.month.toString().toPersianDigit()}/${jalali.day.toString().toPersianDigit()}';
  }

  String convertGregorianToJalaliWithDASH(String date) {
    DateTime gregorianDate = DateTime.parse(date);
    var jalali = Jalali.fromDateTime(gregorianDate);
    return '${jalali.year.toString()}-${jalali.month.toString()}-${jalali.day.toString()}';
  }

  String convertGregorianTimeToJalali(String date) {
    DateTime gregorianDate = DateTime.parse(date);
    var jalali = Jalali.fromDateTime(gregorianDate);
    return '${jalali.hour.toString().toPersianDigit()}:${jalali.minute.toString().toPersianDigit()}';
  }

  String convertGregorianDateTimeToJalali(String date) {
    DateTime gregorianDate = DateTime.parse(date);
    var jalali = Jalali.fromDateTime(gregorianDate);
    return '${jalali.hour.toString().toPersianDigit()}:${jalali.minute.toString().toPersianDigit()} - ${jalali.year.toString().toPersianDigit()}/${jalali.month.toString().toPersianDigit()}/${jalali.day.toString().toPersianDigit()}  ';
  }

  String diffJalaliDate(String targetDate) {
    Jalali jalaliDate = Jalali(
      int.parse(targetDate.split('/')[0]), // year
      int.parse(targetDate.split('/')[1]), // month
      int.parse(targetDate.split('/')[2]), // day
    );

    var formatJalali = jalaliDate;
    var currentJalali = Jalali.now();
    var finalDate =
        formatJalali.julianDayNumber - currentJalali.julianDayNumber;
    return finalDate.toString();
  }

  String convertGregorianToJalaliTwoNumber(String date) {
    DateTime gregorianDate = DateTime.parse(date);
    var jalali = Jalali.fromDateTime(gregorianDate);
    final f = jalali.formatter;
    return '${f.yyyy}/${f.mm}/${f.dd}';
  }
}
