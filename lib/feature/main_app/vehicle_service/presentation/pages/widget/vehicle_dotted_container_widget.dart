import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../../core/constant/theme/typography.dart';

class VehicleDottedContainerWidget extends StatelessWidget {
  final String? caption;
  final double? iconWidth;
  final double? iconHeight;
  final double width;
  final double height;
  final String? iconName;

  const VehicleDottedContainerWidget(
      {super.key,
      this.caption,
      this.iconWidth,
      this.iconHeight,
      this.iconName,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return SizedBox(
      height: height,
      width: width,
      child: DottedBorder(
          dashPattern: const [5, 5, 5, 5],
          borderType: BorderType.RRect,
          color: colorTheme.primary80,
          strokeWidth: 1,
          radius: const Radius.circular(12),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  width: iconWidth,
                  height: iconHeight,
                  image: AssetImage(
                    iconName!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0, right: 3.0),
                  child: Text(
                    caption!,
                    style: TextTypography.titleSmall.copyWith(
                      color: colorTheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
