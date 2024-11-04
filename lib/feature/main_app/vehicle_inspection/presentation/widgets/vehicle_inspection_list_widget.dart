import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/presentation/widgets/vehicle_inspection_plate_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';

class VehicleInspectionListWidget extends StatelessWidget {
  final String applicantName;
  final String inspectionDate;
  final String region;
  final String letter;
  final String segment1;
  final String segment2;
  final String status;
  final Color statusColor;

  final Color statusColorBg;

  const VehicleInspectionListWidget({
    super.key,
    required this.applicantName,
    required this.inspectionDate,
    required this.region,
    required this.letter,
    required this.segment1,
    required this.segment2,
    required this.status,
    required this.statusColor,
    required this.statusColorBg,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return SimpleRoundedContainer(
      width: width * 0.9,
      height: height * 0.28,
      bgColor: colorTheme.layer,
      borderColor: colorTheme.borders,
      borderRadius: 8.0,
      padding: 10,
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'main.applicant_name'.tr(),
                  style: TextTypography.labelLarge
                      .copyWith(color: colorTheme.textVariant),
                ),
                Text(
                  applicantName,
                  style: TextTypography.titleSmall
                      .copyWith(color: colorTheme.text),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'main.inspection_date'.tr(),
                  style: TextTypography.labelLarge
                      .copyWith(color: colorTheme.textVariant),
                ),
                Text(
                  inspectionDate,
                  style: TextTypography.titleSmall
                      .copyWith(color: colorTheme.text),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            VehicleInspectionPlateWidget(
              region: region,
              letter: letter,
              segment1: segment1,
              segment2: segment2,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'main.status'.tr(),
                  style: TextTypography.labelLarge
                      .copyWith(color: colorTheme.textVariant),
                ),
                SimpleRoundedContainer(
                  width: width * 0.4,
                  height: height * 0.05,
                  bgColor: statusColorBg,
                  borderColor: statusColor,
                  borderRadius: 15.0,
                  widget: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        status,
                        style: TextTypography.labelMedium
                            .copyWith(color: statusColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
