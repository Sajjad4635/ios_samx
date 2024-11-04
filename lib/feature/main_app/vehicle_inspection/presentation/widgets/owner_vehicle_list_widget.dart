import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/widgets/plate_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';

class OwnerVehicleListWidget extends StatelessWidget {
  final String vehicleName;
  final String region;
  final String letter;
  final String segment1;
  final String segment2;

  OwnerVehicleListWidget({
    super.key,
    required this.vehicleName,
    required this.region,
    required this.letter,
    required this.segment1,
    required this.segment2,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return SimpleRoundedContainer(
      width: width * 0.9,
      height: height * 0.10,
      bgColor: colorTheme.layer,
      borderColor: colorTheme.layer,
      borderRadius: 8.0,
      padding: 5,
      widget: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width * 0.2,
              child: Text(
                vehicleName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    TextTypography.labelLarge.copyWith(color: colorTheme.black),
              ),
            ),
            PlateListWidget(
              region: region,
              letter: letter,
              segment1: segment1,
              segment2: segment2,
            ),
          ],
        ),
      ),
    );
  }
}
