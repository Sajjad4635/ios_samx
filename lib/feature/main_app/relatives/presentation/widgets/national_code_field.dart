import 'package:ios_samx/core/base_widget/app_text_field/index.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NationalCodeFiled extends StatelessWidget {
  final TextEditingController nationalCodeController;
  const NationalCodeFiled({super.key , required this.nationalCodeController});

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);

    return AppTextField(
      keyboardType: TextInputType.number,
      customWidth: width * 0.9,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        FilteringTextInputFormatter.digitsOnly
      ],
      validator: (value) {
        if (value!.isEmpty) {
          return "main.fill_field_is_required".tr();
        }
        if (!Utils.nationalCodeValidator(natCode: value)) {
          return "main.wrong_national_code".tr();
        }
        return null;
      },
      controller: nationalCodeController,
      label: 'strings.nationalCode'.tr(),
      helperText: "main.fill_field_is_required".tr(),
    );
  }
}
