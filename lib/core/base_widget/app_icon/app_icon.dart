import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.icon,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final isRTL = context.locale == const Locale('fa');
    return Transform.rotate(
      angle: isRTL ? 0.0 : math.pi,
      child: icon,
    );
  }
}
