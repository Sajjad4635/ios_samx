import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ItemCheck extends StatelessWidget {
  const ItemCheck({
    super.key,
    required this.selectedOption,
    required this.title,
    required this.value,
    required this.fillColor,
    required this.style,
    this.onChanged,
  });

  final int selectedOption;
  final Function(int?)? onChanged;
  final TextStyle style;
  final String title;
  final int value;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<int>(
          value: value,
          groupValue: selectedOption,
          fillColor: MaterialStateProperty.all(fillColor),
          splashRadius: 20,
          onChanged: onChanged,
        ),
        Text(
          title.tr(),
          style: style,
        ),
      ],
    );
  }
}
