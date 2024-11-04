import 'package:flutter/material.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/base_widget/index.dart' show AppStepper;

class RequestStepper extends StatelessWidget {
  const RequestStepper({
    super.key,
    this.activeTab = 0,
  });

  final int? activeTab;

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    return SizedBox(
      width: width * .9,
      height: 74,
      child: AppStepper(
        activeStep: activeTab,
        captions: const [
          'cplife.policy',
          'cplife.request_type_without_colon',
          'cplife.complete_request',
          'cplife.final_request',
        ],
      ),
    );
  }
}
