import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SimpleRoundedContainer extends StatelessWidget {
  final double width;
  final double height;
  final double? padding;

  // final String caption;
  final Color bgColor;
  final Color borderColor;
  final double borderRadius;
  void Function()? onTap;
  final Widget? widget;

  SimpleRoundedContainer({
    super.key,
    this.onTap,
    required this.width,
    required this.height,
    // required this.caption,
    required this.bgColor,
    required this.borderRadius,
    required this.borderColor,
    this.widget,
    this.padding = 0,
    // this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding!),
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: bgColor,
                border: Border.all(color: borderColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    borderRadius,
                  ),
                )),
            child: widget),
      ),
    );
  }
}
