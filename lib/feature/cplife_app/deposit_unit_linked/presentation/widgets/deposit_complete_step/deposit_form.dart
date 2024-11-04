import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/life_insurances_list_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class DepositForm extends StatelessWidget {
  const DepositForm({
    super.key,
    required this.depositAmountCallback,
    required this.controller,
    required this.formkey,
  });

  final DepositAmountCallback depositAmountCallback;
  final TextEditingController controller;
  final GlobalKey<FormState> formkey;

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextFormField(
            controller: controller,
            title: "cplife.pay_to_deposit_amount".tr(),
            hint: "",
            maxLength: 10,
            customWidth: width * 0.9,
            errorMessage: "",
            validator: (value) => validateNumber(value),
            isRial: true,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              depositAmountCallback(value);
            },
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            prefix: Container(
                width: 50,
                alignment: Alignment.center,
                child: const Text(
                  "ریال",
                  style: AppStyle.size15Weight400darkGray,
                )),
          ),
          const SizedBox(height: 4),
          Container(
            width: width * 0.9,
            alignment: Alignment.topRight,
            child: Text(
              "حداقل مبلغ واریز به اندوخته ${"100000".seRagham()} ریال و حداکثر مبلغ ${"2000000000".seRagham()} ریال است."
                  .toPersianDigit(),
              style: TextTypography.labelMedium
                  .copyWith(color: colorTheme.textVariant),
            ),
          ),
        ],
      ),
    );
  }
}

String? validateNumber(String? value) {
  if (double.tryParse(Utils.removeThousandSeparators(value!)) == null) {
    return "cplife.pick_valid_number".tr();
  } else {
    double number = double.parse(Utils.removeThousandSeparators(value));
    if (number < 100000 || number > 200000000) {
      return "cplife.out_of_range_amount".tr();
    }
    return null; // No error
  }
}
