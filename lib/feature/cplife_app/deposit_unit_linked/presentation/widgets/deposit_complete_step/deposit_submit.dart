import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DepositSubmit extends StatelessWidget {
  const DepositSubmit({
    super.key,
    required this.isFormDisable,
    required this.formkey,
  });

  final bool isFormDisable;
  final GlobalKey<FormState> formkey;

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ButtonPrimary(
          title: "cplife.confirm_continue".tr(),
          buttonLoading: false,
          customWidth: width * 0.9,
          customHeight: 48,
          onPressed: isFormDisable
              ? null
              : () {
                  if (formkey.currentState!.validate()) {
                    DefaultTabController.of(context).animateTo(3);
                  }
                },
        ),
      ),
    );
  }
}
