import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WithdrawConvert extends StatelessWidget {
  const WithdrawConvert({
    super.key,
    required this.controller,
    required this.transactionStatus,
    required this.percentController,
  });

  final TextEditingController controller;
  final TextEditingController percentController;
  final String transactionStatus;

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    String? validateAmount(String value) {
      double maximumValue =
          double.parse(Utils.removeThousandSeparators(transactionStatus));
      if (value.isEmpty) return null;
      if (double.tryParse(Utils.removeThousandSeparators(value)) == null) {
        return "cplife.pick_valid_number".tr();
      }
      if (double.parse(Utils.removeThousandSeparators(value)) > maximumValue) {
        return "cplife.over_amount".tr();
      }
      return null; // No error
    }

    return Column(
      children: [
        const SizedBox(height: 32),
        CustomTextFormField(
          controller: controller,
          onChanged: (value) {
            if (value.isNotEmpty) {
              percentController.text =
                  ((double.parse(Utils.removeThousandSeparators(value)) /
                              double.parse(Utils.removeThousandSeparators(
                                  transactionStatus))) *
                          100)
                      .toStringAsFixed(0)
                      .toString();
            } else {
              percentController.clear();
            }
          },
          errorMessage: '',
          validator: (value) => validateAmount(value!),
          customWidth: width * 0.9,
          maxLength: 20,
          keyboardType: TextInputType.number,
          title: "cplife.withdraw_request_amount".tr(),
          isRial: true,
          prefix: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "cplife.saved_money_currency".tr(),
              style: AppStyle.size12Weight400.copyWith(
                color: AppColors.lightGray2,
              ),
            ),
          ),
        ),
        Skeleton.keep(
          child: SizedBox(
            height: 35,
            child: Center(
              child: Icon(
                color: colorTheme.primary,
                Magicon.exchangeVertical,
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        CustomTextFormField(
          controller: percentController,
          errorMessage: '',
          customWidth: width * 0.9,
          keyboardType: TextInputType.number,
          onChanged: (value) {
            if (value.isNotEmpty) {
              controller.text = ((int.parse(value) / 100) *
                      double.parse(Utils.removeThousandSeparators(
                          transactionStatus)))
                  .toStringAsFixed(0)
                  .toString();
            } else {
              controller.clear();
            }
          },
          title: "cplife.withdraw_request_amount_percent".tr(),
          isRial: true,
          prefix: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "٪",
              style: AppStyle.size12Weight400.copyWith(
                color: AppColors.lightGray2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
