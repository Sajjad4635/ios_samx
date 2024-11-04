import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:flutter/material.dart';

abstract class CustomTheme implements ColorTheme {
  Color get white;

  Color get black;

  Color get lightWhite;

  Color get bg;

  Color get textInverse;

  Color get layer;

  Color get intComponents;

  Color get borders;

  Color get solid;

  Color get textVariant;

  Color get solidVariant;

  Color get text;

  Color get bgInverse;

  Color get onPrimaryContainer;

  Color get primary;

  Color get fixedPrimary;

  Color get primary80;

  Color get primaryContainer;

  Color get primary95;

  Color get onPrimary;

  Color get onErrorContainer;

  Color get error;

  Color get fixedError;

  Color get errorContainer;

  Color get onError;

  Color get onWarningContainer;

  Color get warning;

  Color get fixedWarning;

  Color get warningContainer;

  Color get onWarning;

  Color get onSuccessContainer;

  Color get success;

  Color get fixedSuccess;

  Color get successContainer;

  Color get onSuccess;

  Color get onInfoContainer;

  Color get info;

  Color get fixedInfo;

  Color get infoContainer;

  Color get onInfo;

  Color get brandSecondary ;

  Color get colorTextQuaternary ;

  Color get colorTextTertiary ;
}

class LightMyTheme implements CustomTheme {
  @override
  Color get white => const Color(0xffFFFFFF);

  @override
  Color get bg => const Color(0xffFCFCFD);

  @override
  Color get bgInverse => const Color(0xff1C2024);

  @override
  Color get black => const Color(0xff000000);

  @override
  Color get borders => const Color(0xffD9D9E0);

  @override
  Color get error => const Color(0xffE53935);

  @override
  Color get errorContainer => const Color(0xffFBDEDE);

  @override
  Color get fixedError => const Color(0xffE95B58);

  @override
  Color get fixedInfo => const Color(0xff9C65E3);

  @override
  Color get fixedPrimary => const Color(0xff4690FF);

  @override
  Color get fixedSuccess => const Color(0xff66A284);

  @override
  Color get fixedWarning => const Color(0xffFFC343);

  @override
  Color get info => const Color(0xff7B32D9);

  @override
  Color get infoContainer => const Color(0xffEBE0F9);

  @override
  Color get intComponents => const Color(0xffF0F0F3);

  @override
  Color get layer => const Color(0xffF7F7F8);

  @override
  Color get lightWhite => const Color(0xffFCFDFF);

  @override
  Color get onError => const Color(0xffFCFCFD);

  @override
  Color get onErrorContainer => const Color(0xffC01F1B);

  @override
  Color get onInfo => const Color(0xffFCFCFD);

  @override
  Color get onInfoContainer => const Color(0xff692AB8);

  @override
  Color get onPrimary => const Color(0xffFCFCFD);

  @override
  Color get onPrimaryContainer => const Color(0xff085BD9);

  @override
  Color get onSuccess => const Color(0xffFCFCFD);

  @override
  Color get onSuccessContainer => const Color(0xff2B6F4D);

  @override
  Color get onWarning => const Color(0xffFCFCFD);

  @override
  Color get onWarningContainer => const Color(0xffD99504);

  @override
  Color get primary => const Color(0xff096BFF);

  @override
  Color get primary80 => const Color(0xff78AEFF);

  @override
  Color get primary95 => const Color(0xffDAE9FF);

  @override
  Color get primaryContainer => const Color(0xffE5F0FF);

  @override
  Color get solid => const Color(0xffB9BBC6);

  @override
  Color get solidVariant => const Color(0xff8B8D98);

  @override
  Color get success => const Color(0xff40A573);

  @override
  Color get successContainer => const Color(0xffE0ECE6);

  @override
  Color get text => const Color(0xff1C2024);

  @override
  Color get textInverse => const Color(0xffFCFCFD);

  @override
  Color get textVariant => const Color(0xff60646C);

  @override
  Color get warning => const Color(0xffFFC107);

  @override
  Color get warningContainer => const Color(0xffFFF3D9);

  @override
  Color get brandSecondary => const Color(0xff3C8AFF);

  @override
  Color get colorTextQuaternary => const Color(0xff98A2B3);

  @override
  Color get colorTextTertiary => const Color(0xff667085);
}

class DarkMyTheme implements CustomTheme {
  @override
  Color get bg => const Color(0xff1C2024);

  @override
  Color get bgInverse => const Color(0xff212428);

  @override
  Color get black => const Color(0xff000000);

  @override
  Color get borders => const Color(0xffD9D9E0);

  @override
  Color get error => const Color(0xffFBDEDE);

  @override
  Color get errorContainer => const Color(0xff7C1412);

  @override
  Color get fixedError => const Color(0xffE95B58);

  @override
  Color get fixedInfo => const Color(0xff9C65E3);

  @override
  Color get fixedPrimary => const Color(0xff4690FF);

  @override
  Color get fixedSuccess => const Color(0xff66A284);

  @override
  Color get fixedWarning => const Color(0xffFFC343);

  @override
  Color get info => const Color(0xffEBE0F9);

  @override
  Color get infoContainer => const Color(0xff441B77);

  @override
  Color get intComponents => const Color(0xffF0F0F3);

  @override
  Color get layer => const Color(0xff212428);

  @override
  Color get lightWhite => const Color(0xffFCFDFF);

  @override
  Color get onError => const Color(0xff7C1412);

  @override
  Color get onErrorContainer => const Color(0xffEF8784);

  @override
  Color get onInfo => const Color(0xff441B77);

  @override
  Color get onInfoContainer => const Color(0xffD1B7F2);

  @override
  Color get onPrimary => const Color(0xff053B8C);

  @override
  Color get onPrimaryContainer => const Color(0xff78AEFF);

  @override
  Color get onSuccess => const Color(0xff1C4832);

  @override
  Color get onSuccessContainer => const Color(0xffB8D4C6);

  @override
  Color get onWarning => const Color(0xff8C6003);

  @override
  Color get onWarningContainer => const Color(0xffFFE3A7);

  @override
  Color get primary => const Color(0xffA9CBFF);

  @override
  Color get primary80 =>  const Color(0xff78AEFF);

  @override
  Color get primary95 => const Color(0xffDAE9FF);

  @override
  Color get primaryContainer => const Color(0xff053B8C);

  @override
  Color get solid => const Color(0xffB9BBC6);

  @override
  Color get solidVariant => const Color(0xff8B8D98);

  @override
  Color get success => const Color(0xffE0ECE6);

  @override
  Color get successContainer => const Color(0xff1C4832);

  @override
  Color get text => const Color(0xffFCFCFD);

  @override
  Color get textInverse => const Color(0xffFFFFFF);

  @override
  Color get textVariant => const Color(0xffD9D9E0);

  @override
  Color get warning => const Color(0xffFFF3D9);

  @override
  Color get warningContainer => const Color(0xff8C6003);

  @override
  Color get white => const Color(0xffFFFFFF);

  @override
  Color get brandSecondary => const Color(0xff3C8AFF);

  @override
  Color get colorTextQuaternary => const Color(0xff98A2B3);

  @override
  Color get colorTextTertiary => const Color(0xff667085);}

void changeTheme(BuildContext context, CustomTheme newTheme, MyThemeMode mode) {
  final colorThemeManager = context.colorThemeManager<CustomTheme>();

  /// Update current light theme
  colorThemeManager.setTheme(newTheme);

  /// Update current dark theme
  colorThemeManager.setDarkTheme(newTheme);

  /// Check whether app is in light or darkmode
  /// [Brightness.dark] for dark mode and [Brightness.light] for light mode;
  colorThemeManager.getCurrentMode();
}

enum MyThemeMode { light, dark }
