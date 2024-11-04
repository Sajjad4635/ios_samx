import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../../core/constant/theme/typography.dart';
import '../../../../../../core/extensions/convert_date.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../vehicle_profile/domain/entities/vehicle/vehicle_response_data/vehicle_response_data.dart';

class InsuranceDetailWidget extends StatelessWidget {
  final VehicleResponseData vehicleResponseData;

  const InsuranceDetailWidget({super.key, required this.vehicleResponseData});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Container(
      width: width,
      height: height * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: colorTheme.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                child: Text(
                  'main.ins_detail'.tr(),
                  style: TextTypography.titleMedium,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'main.ins_start'.tr(),
                    style: TextTypography.titleSmall.copyWith(
                      color: colorTheme.textVariant,
                    ),
                  ),
                  Text(
                    vehicleResponseData.vehicle.beginDate
                        .toString()
                        .toPersianDigit(),
                    style: TextTypography.labelLarge.copyWith(
                      color: colorTheme.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'main.ins_end'.tr(),
                    style: TextTypography.titleSmall.copyWith(
                      color: colorTheme.textVariant,
                    ),
                  ),
                  Text(
                    vehicleResponseData.vehicle.endDate
                        .toString()
                        .toPersianDigit(),
                    style: TextTypography.labelLarge.copyWith(
                      color: colorTheme.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'main.number_without_damage'.tr() ,
                    style: TextTypography.titleSmall.copyWith(
                      color: colorTheme.textVariant,
                    ),
                  ),
                  Text(
                    vehicleResponseData.vehicle.
                    discountLifeYearNumber.toPersianDigit() + 'main.times'.tr() ,
                    style: TextTypography.labelLarge.copyWith(
                      color: colorTheme.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'main.number_day_left'.tr(),
                    style: TextTypography.titleSmall.copyWith(
                      color: colorTheme.textVariant,
                    ),
                  ),
                  Text(
                    '${ConvertDate().diffJalaliDate(vehicleResponseData.vehicle.endDate).toPersianDigit()}${'main.day'.tr()}',
                    style: TextTypography.labelLarge.copyWith(
                      color: colorTheme.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'main.number_casualties'.tr() ,
                    style: TextTypography.titleSmall.copyWith(
                      color: colorTheme.textVariant,
                    ),
                  ),
                  Text(
                    vehicleResponseData.vehicle.
                    discountLifeYearNumber.toPersianDigit() + 'main.times'.tr() ,
                    style: TextTypography.labelLarge.copyWith(
                      color: colorTheme.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'main.number_damages'.tr(),
                    style: TextTypography.titleSmall.copyWith(
                      color: colorTheme.textVariant,
                    ),
                  ),
                  Text(
                    vehicleResponseData.vehicle.discountFinanceYearNumber.toPersianDigit() + 'main.times'.tr(),
                    style: TextTypography.labelLarge.copyWith(
                      color: colorTheme.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'main.number_accidents'.tr(),
                    style: TextTypography.titleSmall.copyWith(
                      color: colorTheme.textVariant,
                    ),
                  ),
                  Text(
                    vehicleResponseData.vehicle.discountDriverYearNumber.toPersianDigit() + 'main.times'.tr(),
                    style: TextTypography.labelLarge.copyWith(
                      color: colorTheme.black,
                    ),
                  ),
                ],
              ),
              AppButton(
                  buttonType: ButtonType.isSecondary,
                  title: "main.view".tr(),
                  customHeight: 48,
                  customWidth: width,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ]),
      ),
    );
  }
}
