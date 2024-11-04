import 'package:ios_samx/core/base_widget/index.dart' show AppEffect;
import 'package:ios_samx/core/constant/theme/light_theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClickableCustomButton extends StatefulWidget {
  const ClickableCustomButton({
    super.key,
    required this.child,
    required this.color,
    required this.tooltipMessage,
    this.onTap,
    this.pHeight,
    this.shadow,
  });

  final Widget child;
  final Function()? onTap;
  final double? pHeight;
  final Color color;
  final List<BoxShadow>? shadow;
  final String tooltipMessage;

  @override
  ClickableCustomButtonState createState() => ClickableCustomButtonState();
}

class ClickableCustomButtonState extends State<ClickableCustomButton> {
  Color borderColor = LightTheme.solid;
  Color backgroundColor = LightTheme.onPrimary;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    Color backgroundColor = widget.color;

    void pressed() {
      setState(() {
        borderColor = LightTheme.primary;
        backgroundColor = LightTheme.primaryContainer;
      });
    }

    void unPressed() {
      setState(() {
        borderColor = LightTheme.solid;
        backgroundColor = LightTheme.onPrimary;
      });
    }

    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (details) {
        pressed();
      },
      onTapUp: (details) {
        unPressed();
      },
      onTapCancel: () {
        unPressed();
      },
      child: Tooltip(
        message: widget.tooltipMessage,
        child: Container(
          height: widget.pHeight ?? height * 0.11,
          decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: widget.shadow ?? [AppEffect.shadowSmall],
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: borderColor,
              width: 1,
            ),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
