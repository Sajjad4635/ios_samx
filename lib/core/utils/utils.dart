import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Utils {
  static String? amountValidator(String? value, int? minValue, int? maxValue) {
    value = value?.replaceAll(",", "");

    if (value == null || value.isEmpty) {
      return "لطفا مقدار مورد نظر را وارد کنید";
    }
    try {
      int parsedValue = int.parse(value);

      int min = minValue ?? 10000;
      int max = maxValue ?? 500000000;

      if (parsedValue < min) {
        return "حداقل مقدار${" $min".toPersianDigit().seRagham()} ریال می باشد";
      }
      if (parsedValue > max) {
        return "حداکثر مقدار${" $max".toPersianDigit().seRagham()} ریال می باشد";
      }

      return null;
    } on FormatException {
      return "ورودی نامعتبر است: لطفا فقط عدد وارد کنید";
    }
  }

  //---------------------------------------------------------------------------
  static bool nationalCodeValidator({required String natCode}) {
    List<int> natElementList = <int>[];
    int sum = 0;
    natElementList.clear();

    bool result = false;
    for (var rune in natCode.runes) {
      var ch = String.fromCharCode(rune);
      int str2num = int.parse(ch);
      natElementList.add(str2num);
    }
    for (int i = natElementList.length - 2; i >= 0; i--) {
      sum += (10 - i) * natElementList[i];
    }
    int mod = sum % 11;
    if (mod < 2) {
      result = mod == natElementList[natElementList.length - 1] ? true : false;
    } else {
      // greater than 2
      result = (11 - mod) == natElementList[natElementList.length - 1]
          ? true
          : false;
    }

    return result;
  }

  //----------------------------------------------------------------------------
  static String? validateMobile(String? value) {
    RegExp regExp = RegExp(r'^09[0-9]{9}$');
    if (value != null && !regExp.hasMatch(value)) {
      if (value.length != 11) {
        return "خطای تعداد ارقام";
      } else {
        return "main.invalid_input_format".tr();
      }
    }
    return null;
  }

  static String removeThousandSeparators(String numberString) {
    if (numberString.isEmpty) return "";

    numberString = numberString.replaceAll(",", "");

    try {
      double number = double.parse(numberString);
      return number.toString();
    } on FormatException {
      return "فرمت عدد نامعتبر است."; // "Invalid number format." in Persian
    }
  }

  static String roundFloatNumber({
    required num value,
    bool toPersianDigit = true,
  }) {
    final lastValue = value.toStringAsFixed(0).seRagham();

    if (toPersianDigit) return lastValue.toPersianDigit();

    return lastValue;
  }

  static bool isUserUpper18(int userBirthYear) {
    Jalali selectedFromDate = Jalali.now();

    if (userBirthYear + 18 <= selectedFromDate.year) {
      return true;
    } else {
      return false;
    }
  }

  static String ibanFormatter(String iban){
    String formattedString = '${iban.substring(0, 2)} - ${iban.substring(2)}';
   return formattedString;
  }

  static String cardSpaceFormatter(String card){
    String formattedNumber = '';
    for (int i = 0; i < card.length; i++) {
      if (i > 0 && i % 4 == 0) {
        formattedNumber += '    ';
      }
      formattedNumber += card[i];
    }
    return formattedNumber;
  }

  static String cardDashFormatter(String card){
    String formattedNumber = '';
    for (int i = 0; i < card.length; i++) {
      if (i > 0 && i % 4 == 0) {
        formattedNumber += '-';
      }
      formattedNumber += card[i];
    }
    return formattedNumber;
  }


  String maskPhoneNumber(String phoneNum){
    if(phoneNum.length<10){
      return phoneNum;
    }
    String firstPart = phoneNum.substring(0,4);
    String lastPart = phoneNum.substring(phoneNum.length -2);
    String maskedPart = "*" * (phoneNum.length - 6);
    return "$firstPart$maskedPart$lastPart";

  }

  static Color extractColorBaseCardNumber(int cardNum) {
    switch (cardNum) {
      case 627412:
        return const Color(0xff675497);
      case 627381:
        return const Color(0xff99171C);
      case 505785:
        return const Color(0xff442684);
      case 622106 || 639194 || 627884:
        return const Color(0xffA0714B);
      case 639347 || 502229:
        return const Color(0xffE5B808);
      case 627353:
        return const Color(0xff2A4389);
      case 502908:
        return const Color(0xff502908);
      case 627648 || 207177:
        return const Color(0xff006207);
      case 636949:
        return const Color(0xff2D447A);
      case 502938:
        return const Color(0xff007D8B);
      case 589463:
        return const Color(0xff15306A);
      case 621986:
        return const Color(0xff0064A7);
      case 589210:
        return const Color(0xff464646);
      case 639607:
        return const Color(0xff1C1C41);
      case 639346:
        return const Color(0xff203268);
      case 502806:
        return const Color(0xffC22228);
      case 603769:
        return const Color(0xff29265E);

      case 627961:
        return const Color(0xff8C7444);

      case 606373:
        return const Color(0xff71AF3B);

      case 639599:
        return const Color(0xff007137);

      case 627488 || 502910:
        return const Color(0xff058664);

      case 603770 || 639217:
        return const Color(0xff305D0F);

      case 505416:
        return const Color(0xff9F0F14);

      case 636795:
        return const Color(0xff001643);

      case 628023:
        return const Color(0xffD44A0C);

      case 610433 || 991975:
        return const Color(0xffA70A1F);

      case 603799:
        return const Color(0xffD99D0D);

      case 639370:
        return const Color(0xff028B44);

      case 627760:
        return const Color(0xff126A38);

      case 628157:
        return const Color(0xff812022);

      case 505801:
        return const Color(0xff86145E);
      case 636214:
        return const Color(0xff69291B);

      default:
        return const Color(0xff8B8D98);
    }
  }

  static String extractIconBankBaseCardNumber(String cardNum) {
    if (cardNum.startsWith("627412")) {
      return "eghtesade_novin";
    } else if (cardNum.startsWith("627381")) {
      return "ansar";
    } else if (cardNum.startsWith("505785")) {
      return "iran_zamin";
    } else if (cardNum.startsWith("622106") ||
        cardNum.startsWith("639194") ||
        cardNum.startsWith("627884")) {
      return "parsian";
    } else if (cardNum.startsWith("639347") || cardNum.startsWith("502229")) {
      return "pasargad";
    } else if (cardNum.startsWith("627353")) {
      return "tejarat";
    } else if (cardNum.startsWith("502908")) {
      return "tosee_taavon";
    } else if (cardNum.startsWith("627648") || cardNum.startsWith("207177")) {
      return "tosee_saderat";
    } else if (cardNum.startsWith("636949")) {
      return "hekmat";
    } else if (cardNum.startsWith("502938")) {
      return "dey";
    } else if (cardNum.startsWith("589463")) {
      return "refah";
    } else if (cardNum.startsWith("621986")) {
      return "saman";
    } else if (cardNum.startsWith("589210")) {
      return "sepah";
    } else if (cardNum.startsWith("639607")) {
      return "sarmayeh";
    } else if (cardNum.startsWith("639346")) {
      return "sina";
    } else if (cardNum.startsWith("502806")) {
      return "shahr";
    } else if (cardNum.startsWith("603769")) {
      return "saderat";
    } else if (cardNum.startsWith("627961")) {
      return "sanat_madan";
    } else if (cardNum.startsWith("606373")) {
      return "mehr";
    } else if (cardNum.startsWith("639599")) {
      return "ghavamin";
    } else if (cardNum.startsWith("627488") || cardNum.startsWith("502910")) {
      return "karafarin";
    } else if (cardNum.startsWith("603770") || cardNum.startsWith("639217")) {
      return "keshavarzi";
    } else if (cardNum.startsWith("505416")) {
      return "gardeshgari";
    } else if (cardNum.startsWith("636795")) {
      return "markazi";
    } else if (cardNum.startsWith("628023")) {
      return "maskan";
    } else if (cardNum.startsWith("610433") || cardNum.startsWith("991975")) {
      return "mellat";
    } else if (cardNum.startsWith("603799")) {
      return "melli";
    } else if (cardNum.startsWith("639370") || cardNum.startsWith("606737")) {
      return "mehr_eghtesad";
    } else if (cardNum.startsWith("627760")) {
      return "post";
    } else if (cardNum.startsWith("628157")) {
      return "tosee";
    } else if (cardNum.startsWith("505801")) {
      return "kosar";
    } else if (cardNum.startsWith("504172")) {
      return "resalat";
    } else if (cardNum.startsWith("606256")) {
      return "melal";
    } else if (cardNum.startsWith("507677")) {
      return "noor";
    } else if (cardNum.startsWith("585947")) {
      return "khavarmianeh";
    } else if (cardNum.startsWith("636214")) {
      return "ayande";
    } else {
      return "bank";
    }
  }

  static String extractIconBankBaseSheba(String sheba) {
    switch (sheba) {
      case "010":
        return "markazi";
      case "011":
        return "sanat_madan";
      case "012":
        return "mellat";
      case "013":
        return "refah";
      case "014":
        return "maskan";
      case "015":
        return "sepah";
      case "016":
        return "keshavarzi";
      case "017":
        return "melli";
      case "018":
        return "tejarat";
      case "019":
        return "saderat";
      case "020":
        return "tosee_saderat";
      case "021":
        return "post";
      case "022":
        return "tosee_taavon";
      case "051":
        return "tosee";
      case "053":
        return "karafarin";
      case "054":
        return "parsian";
      case "055":
        return "eghtesade_novin";
      case "056":
        return "saman";
      case "057":
        return "pasargad";
      case "058":
        return "sarmayeh";
      case "059":
        return "sina";
      case "060":
        return "mehr";
      case "061":
        return "shahr";
      case "063":
        return "ansar";
      case "064":
        return "gardeshgari";
      case "065":
        return "hekmat";
      case "066":
        return "dey";
      case "069":
        return "iran_zamin";
      case "079":
        return "mehr_eghtesad";
      case "075":
        return "melal";
      case "080":
        return "noor";
      case "078":
        return "khavarmianeh";
      case "073":
        return "khavarmianeh";
      case "062":
        return "ayande";
      case "070":
        return "resalat";
      default:
        return "bank";
    }
  }
}
