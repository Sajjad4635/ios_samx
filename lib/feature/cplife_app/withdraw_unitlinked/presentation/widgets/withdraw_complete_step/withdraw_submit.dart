import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WithdrawSubmit extends StatelessWidget {
  const WithdrawSubmit({
    super.key,
    required this.isActive,
    required this.formKey,
  });

  final bool isActive;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 40, top: 40),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ButtonPrimary(
          title: "cplife.confirm_continue".tr(),
          buttonLoading: false,
          customWidth: width * 0.9,
          customHeight: 48,
          onPressed: !isActive
              ? null
              : () {
                  if (formKey.currentState!.validate()) {
                    DefaultTabController.of(context).animateTo(3);
                  }
                },
        ),
      ),
    );
  }
}
