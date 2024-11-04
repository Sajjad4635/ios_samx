import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/pages/tickets_insurances_screen.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/presentation/pages/claim_followup_screen.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/widget/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ios_samx/core/base_widget/index.dart'
    show AppIcon, AppSnackBar, SnackBarType;

class RequestsPageInterfaceScreen extends StatelessWidget {
  final bool isActiveGetActiveByPerson;
  const RequestsPageInterfaceScreen({
    super.key,
    required this.isActiveGetActiveByPerson,
  });

  @override
  Widget build(BuildContext context) {
    final double width = ResponsiveLayout.getDeviceType(context);

    final colorTheme = context.colorTheme<CustomTheme>();

    return Scaffold(
      backgroundColor: colorTheme.white,
      body: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: width * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                "main.select_request",
                style: TextTypography.titleSmall,
              ).tr(),
              const SizedBox(
                height: 24,
              ),
              ClickableCustomButton(
                onTap: () {
                  if (isActiveGetActiveByPerson) {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const ClaimFollowupScreen(),
                        type: PageTransitionType.leftToRight,
                      ),
                    );
                  } else {
                    AppSnackBar.showSnackBar(
                      context: context,
                      type: SnackBarType.info,
                      title: 'main.confirm'.tr(),
                      message: "home.no_supplementary_insurance".tr(),
                    );
                  }
                },
                color: colorTheme.onPrimary,
                tooltipMessage: '',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/images/stethoscope.png",
                          height: 25,
                          width: 25,
                        )),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "main.requests_for_treatment_damages".tr(),
                        style: TextTypography.labelLarge,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: AppIcon(
                        icon: Icon(
                          Magicon.angleLeft,
                          color: colorTheme.primary,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ClickableCustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const TicketsInsurancesScreen(),
                          type: PageTransitionType.leftToRight));
                },
                color: colorTheme.onPrimary,
                tooltipMessage: '',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/images/shield-heart.png",
                          height: 25,
                          width: 25,
                        )),
                    Expanded(
                        flex: 4,
                        child: Text(
                          "main.life_request".tr(),
                          style: TextTypography.labelLarge,
                        )),
                    Expanded(
                      flex: 1,
                      child: AppIcon(
                        icon: Icon(
                          Magicon.angleLeft,
                          color: colorTheme.primary,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




//------------------------------------------------------------------------------
