import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class DepositFinalDashedDivider extends StatelessWidget {
  const DepositFinalDashedDivider({
    Key? key,
    this.height = 1,
    this.color = Colors.black,
  }) : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: width * .9,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final boxWidth = constraints.constrainWidth();
            const dashWidth = 3.0;
            final dashHeight = height;
            final dashCount = (boxWidth / (2 * dashWidth)).floor();
            return Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: List.generate(dashCount, (_) {
                return SizedBox(
                  width: dashWidth,
                  height: dashHeight,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: color),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
