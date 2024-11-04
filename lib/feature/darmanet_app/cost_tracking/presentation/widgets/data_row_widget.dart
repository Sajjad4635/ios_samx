import 'package:flutter/material.dart';

import '../../../../../core/constant/app_style.dart';

class DataRowWidget extends StatelessWidget {
  final String caption;
  final String title;

  const DataRowWidget({required this.title, required this.caption, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          caption,
          style: AppStyle.size14Weight400costColor,
        ),
        Text(
          title,
          textAlign: TextAlign.left,
          style: AppStyle.size14Weight600,
        ),
      ],
    );
  }
}
