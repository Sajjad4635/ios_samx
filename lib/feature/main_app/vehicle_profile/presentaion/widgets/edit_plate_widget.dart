import 'package:ios_samx/core/base_widget/app_buttons/app_button/app_button.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/widgets/plate_list_widget.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/widgets/vehicle_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EditPlateWidget extends StatefulWidget {
  final String vehicleName;
  final String region;
  final String letter;
  final String segment1;
  final String segment2;

  final void Function()? submitChangesOnPressed;
  final TextEditingController editPlateController;

  const EditPlateWidget(
      {super.key,
      required this.vehicleName,
      required this.region,
      required this.letter,
      required this.segment1,
      required this.segment2,
      required this.submitChangesOnPressed,
      required this.editPlateController,
});

  @override
  State<EditPlateWidget> createState() => _EditPlateWidgetState();
}

class _EditPlateWidgetState extends State<EditPlateWidget> {
  @override
  void initState() {
    super.initState();
    widget.editPlateController.text = widget.vehicleName;
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();

    return Container(
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
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Wrap(
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
            Container(
              alignment: AlignmentDirectional.topStart,
              padding: EdgeInsets.symmetric(vertical: height * 0.03),
              child: Text(
                'vehicle.edit_plate'.tr(),
                style: TextTypography.titleMedium,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            SizedBox(
              width: width,
              height: height * 0.1,
              child: VehicleTextField(
                isNumber: false,
                maxLength: 30,
                controller: widget.editPlateController,
                label: 'vehicle.plate_title'.tr(),
              ),
            ),
            Center(
              child: SizedBox(
                width: width * 0.9,
                child: PlateListWidget(
                  region: widget.region,
                  letter: widget.letter,
                  segment1: widget.segment1,
                  segment2: widget.segment2,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.05, bottom: 10, right: 0.20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    title: "vehicle.submit_changes".tr(),
                    customWidth: width * 0.35,
                    customHeight: 40,
                    style: TextTypography.labelLarge
                        .copyWith(color: colorTheme.onPrimary),
                    buttonType: ButtonType.isFilled,
                    onPressed: widget.submitChangesOnPressed,
                    buttonLoading: false,
                  ),
                  SizedBox(
                    width: width * 0.3,
                    child: TextButton(
                      child: Text(
                        "vehicle.refuse".tr(),
                        style: TextTypography.labelLarge
                            .copyWith(color: colorTheme.primary),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
