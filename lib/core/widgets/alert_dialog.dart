import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/pages/sso_auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:page_transition/page_transition.dart';

import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_login.dart';
import '../constant/app_colors.dart';
import '../constant/app_style.dart';

Future showSuccessWidget(
  BuildContext context,
  String message,
  final void Function() onPressed,
) {
  double width = ResponsiveLayout.getDeviceType(context);
  return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            width: width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 60,
                ),
                SizedBox(
                  width: width,
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: AppStyle.size16Weight500,
                  ),
                ),
                ButtonPrimary(
                  title: "بستن",
                  customHeight: 48,
                  customWidth: width * 0.8,
                  buttonLoading: false,
                  onPressed: onPressed,
                )
              ],
            ),
          ),
        );
      });
}

Future showErrorWidget(BuildContext context, int? code, String message) {
  double width = ResponsiveLayout.getDeviceType(context);
  return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            width: width,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.error_outline,
                  color: AppColors.antiqueRuby,
                  size: 60,
                ),
                // Text(
                //   code == null ? "" : "کد خطا $code",
                //   textAlign: TextAlign.center,
                //   style: AppStyle.size18Weight500.copyWith(color: Colors.black),
                // ),
                SizedBox(
                  width: width * 0.8,
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: AppStyle.size16Weight500,
                  ),
                ),
                ButtonPrimary(
                  title: "بستن",
                  customHeight: 48,
                  customWidth: width * 0.8,
                  buttonLoading: false,
                  onPressed: () {
                    if (code == 401) {
                      final Box box = Hive.box("user_info");
                      box.put("expire_date_time", null);
                      Navigator.push(
                          context, PageTransition(child: const SsoAuthScreen(), type: PageTransitionType.leftToRight));
                    } else if (message.contains("Authorization failing!")) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(child: const TicketingLoginScreen(), type: PageTransitionType.leftToRight),
                          (route) => false);
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          ),
        );
      });
}

Future showInfoWidget(BuildContext context, String message) {
  double width = ResponsiveLayout.getDeviceType(context);
  return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            width: width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.error_outline,
                  color: AppColors.primary,
                  size: 60,
                ),
                SizedBox(
                  width: width * 0.8,
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: AppStyle.size16Weight500,
                  ),
                ),
                ButtonPrimary(
                  title: "بستن",
                  customHeight: 48,
                  customWidth: width * 0.8,
                  buttonLoading: false,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
        );
      });
}
