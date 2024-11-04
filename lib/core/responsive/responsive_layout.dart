import 'package:flutter/material.dart';

class ResponsiveLayout {
  static double getDeviceType(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 1000) {
      return 1000;
    } else {
      return screenWidth;
    }
  }
}
