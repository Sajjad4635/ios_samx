import 'package:ios_samx/core/base_widget/app_buttons/app_button/app_button.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../../core/base_widget/app_buttons/app_error_button/app_error_button.dart';

class PlateWidget extends StatefulWidget {
  final String vehicleName;
  final String region;
  final String letter;
  final String segment1;
  final String segment2;
  final void Function()? onPressedTitleEdit;
  final void Function()? onPressedDelete;

  const PlateWidget({
    super.key,
    required this.vehicleName,
    required this.region,
    required this.letter,
    required this.segment1,
    required this.segment2,
    required this.onPressedTitleEdit,
    required this.onPressedDelete,
  });

  @override
  State<PlateWidget> createState() => _PlateWidgetState();
}

class _PlateWidgetState extends State<PlateWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();

    return Container(
      height: height * 0.25,
      width: width,
      decoration: BoxDecoration(
        color: colorTheme.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: width * 0.1,
                child: Divider(
                  thickness: 4,
                  color: colorTheme.borders,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  'vehicle.iran'.tr(),
                  style:
                      TextTypography.titleMedium.copyWith(color: Colors.black),
                ),
                Text(
                  " " + widget.region.toString().toPersianDigit(),
                  style:
                      TextTypography.titleMedium.copyWith(color: Colors.black),
                ),
                Text(
                  "  " + widget.segment2 + widget.letter + widget.segment1,
                  style:
                      TextTypography.titleMedium.copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AppButton(
                buttonType: ButtonType.isSecondary,
                title: "main.edit_plate".tr(),
                customHeight: 48,
                customWidth: width,
                onPressed: widget.onPressedTitleEdit),
            const SizedBox(
              height: 10,
            ),
            AppErrorButton(
              title: "main.delete_plate".tr(),
              customHeight: 48,
              customWidth: width,
              onPressed: widget.onPressedDelete,
              buttonErrorType: ButtonErrorType.isSecondaryError,
            ),
          ],
        ),
      ),
    );
  }
}
