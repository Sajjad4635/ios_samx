import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  final void Function()? onPressBadge;
  final double? customHeight;
  final double? customWidth;
  final Widget? mainWidget;
  final Widget? badgeWidget;

  const AppBadge({
    super.key,
    required this.onPressBadge,
    required this.badgeWidget,
    required this.customHeight,
    required this.customWidth,
    required this.mainWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 15),
          width: customWidth,
          height: customHeight,
          child: mainWidget,
        ),
        Positioned(
          left: 15,
          child: GestureDetector(
            onTap: onPressBadge,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: badgeWidget,
            ),
          ),
        )
      ],
    );
  }
}
