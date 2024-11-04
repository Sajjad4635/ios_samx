import 'package:ios_samx/core/base_widget/app_stepper/widgets/app_stepper_divider.dart';
import 'package:ios_samx/core/base_widget/app_stepper/widgets/app_stepper_item.dart';
import 'package:flutter/material.dart';

class AppStepper extends StatelessWidget {
  const AppStepper({
    super.key,
    required this.captions,
    this.activeStep = 0,
  });

  final int? activeStep;
  final List<String> captions;

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];
    for (int i = 0; i < captions.length; i++) {
      final bool isActiveDivider = i <= activeStep!;
      final bool isActiveItem = i <= activeStep!;
      children.add(AppStepperItem(
        title: '${i + 1}',
        activeStep: isActiveItem,
        caption: captions[i],
      ));
      if (i < captions.length - 1) {
        children.add(AppStepperDivider(activeStep: isActiveDivider));
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ],
    );
  }
}
