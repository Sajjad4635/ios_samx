import 'dart:ui';
import 'package:flutter/material.dart';

class AppBlur extends StatelessWidget {
  final double blurSigmaX;
  final double blurSigmaY;
  final Color blurColor;

  const AppBlur({
    super.key,
    required this.blurSigmaX,
    required this.blurSigmaY,
    required this.blurColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigmaX, sigmaY: blurSigmaY),
          child: Container(
            color: blurColor.withOpacity(0.1),
          ),
        ),
      ),
    );
  }
}
