import 'package:ios_samx/feature/cplife_app/insurances/presentation/widgets/horizontal_stepper/request_stepper.dart';
import 'package:flutter/material.dart';

class CplifeIndicator extends StatefulWidget {
  const CplifeIndicator({
    super.key,
  });

  @override
  State<CplifeIndicator> createState() => _CplifeIndicatorState();
}

class _CplifeIndicatorState extends State<CplifeIndicator> {
  int processIndex = 0;
  @override
  Widget build(BuildContext context) {
    final controller = DefaultTabController.of(context);

    controller.addListener(() {
      if (controller.indexIsChanging) {
        setState(() {
          processIndex = controller.index;
        });
      }
    });

    return RequestStepper(
      activeTab: processIndex,
    );
  }
}
