import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';

class VehicleInspectionPlateWidget extends StatelessWidget {
  final String region;
  final String letter;
  final String segment1;
  final String segment2;


  const VehicleInspectionPlateWidget(
      {super.key,
        required this.region,
        required this.letter,
        required this.segment1,
        required this.segment2,
      });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    final TextStyle plateFont = TextTypography.titleLarge.copyWith(color: colorTheme.black);
    return SimpleRoundedContainer(
      width: width * 0.9,
      height: height * 0.07,
      bgColor: Colors.transparent,
      borderColor: colorTheme.text,
      borderRadius: 8.0,
      // padding: 10,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 6.0, top: 4.0),
            child: SizedBox(
              width: width* 0.1,
              child: Column(
                children: [
                  Text(
                    'vehicle.iran'.tr(),
                    style: TextTypography.labelMedium
                        .copyWith(color: colorTheme.black),
                  ),
                  Text(
                    region.toString().toPersianDigit(),
                    style: TextTypography.titleLarge
                        .copyWith(color: colorTheme.black),
                  )
                ],
              ),
            ),
          ),
          VerticalDivider(
            color: colorTheme.text,
          ),
          const Spacer() ,
          RichText(
            text: TextSpan(
              text: segment2.toString().toPersianDigit(),
              style: plateFont,
            ),
          ),
          RichText(
            text: TextSpan(
              text: " $letter ",
              style: plateFont,
            ),
          ),
          RichText(
            text: TextSpan(
              text: segment1.toString().toPersianDigit(),
              style: plateFont,
            ),
          ),
          const Spacer() ,
          const Image(
            // width: 32,
            image: AssetImage(
              "assets/images/plate.png",
            ),
          ),
        ],
      ),
    );
  }
}
