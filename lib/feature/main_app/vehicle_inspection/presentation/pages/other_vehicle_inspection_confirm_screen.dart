import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';

class OtherVehicleInspectionConfirmScreen extends StatefulWidget {
  final String phoneNo;

  const OtherVehicleInspectionConfirmScreen({super.key, required this.phoneNo});

  @override
  State<OtherVehicleInspectionConfirmScreen> createState() =>
      _OtherVehicleInspectionConfirmScreenState();
}

class _OtherVehicleInspectionConfirmScreenState
    extends State<OtherVehicleInspectionConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorTheme.bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: 'main.online_visit_of_the_car'.tr(),
          isQrCode: false,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          // color: Colors.yellow,
          width: width,
          height: height / 2,
          padding: const EdgeInsets.only(right: 15.0, left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Magicon.check,
                color: colorTheme.text,
                size: 48,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'vehicle.request_created'.tr(),
                style:
                    TextTypography.titleMedium.copyWith(color: colorTheme.text),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.right,
                  "${'vehicle.request_invitation'.tr()} ${widget.phoneNo.toString().toPersianDigit()} ${'vehicle.request_invitation_'.tr()}",
                  style: TextTypography.bodyMedium.copyWith(
                      color: colorTheme.text, height: 2, letterSpacing: 0.5),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: AppButton(
        buttonType: ButtonType.isFilled,
        title: "vehicle.back_to_home".tr(),
        customHeight: 48,
        customWidth: width * 0.9,
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: const DashboardScreen(),
                  type: PageTransitionType.leftToRight));
        },
      ),
    );
  }
}
