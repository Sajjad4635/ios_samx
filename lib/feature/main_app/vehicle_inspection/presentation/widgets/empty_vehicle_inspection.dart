import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';

class EmptyVehicleInspectionList extends StatelessWidget {
  const EmptyVehicleInspectionList({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        Center(
          child: Image(
            width: width * 0.8,
            image: const AssetImage("assets/images/inspection.png"),
          ),
        ),
        Text(
          'main.null_vehicle_inspection'.tr(),
          style:
          (TextTypography.bodyMedium.copyWith(color: colorTheme.bgInverse)),
        ),
      ],
    );
  }
}
