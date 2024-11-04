import 'package:ios_samx/core/base_widget/app_alert_dialog/index.dart';
import 'package:ios_samx/core/base_widget/app_buttons/index.dart'
    show AppButton, ButtonType;
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/utils/launch_url.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class VersionAlertDialog extends StatelessWidget {
  const VersionAlertDialog({
    super.key,
    required this.versionNo,
    required this.versionLog,
    required this.isForce,
  });

  final String versionNo;
  final String versionLog;
  final bool isForce;

  @override
  Widget build(BuildContext context) {
    Future<void> onSubmitVersionAlert() async {
      Box box = Hive.box(Strings.appDBName);
      DateTime? expirationDateTime = box.get("expire_date_time");
      String? showAds = box.get("showAds");
      DateTime currentTime = DateTime.now();
      bool isExpire = true;

      if (expirationDateTime != null) {
        if (currentTime.isAfter(expirationDateTime)) {
          print("Token has expired.");
          isExpire = true;
        } else {
          print("Token is still valid.");
          isExpire = false;
        }
      } else {
        isExpire = true;
        print("isExpire");
      }

      if (showAds == null) {
        await Navigator.pushReplacementNamed(context, "/intro");
      } else if (isExpire) {
        await Navigator.pushReplacementNamed(context, "/signin");
      } else {
        await Navigator.pushReplacementNamed(context, "/dashboard");
      }
    }

    return AppAlertDialog(
      hasIcon: true,
      title: 'تغییرات نسخه $versionNo'.toPersianDigit(),
      body: versionLog,
      buttons: Row(
        children: [
          if (isForce) ...[
            Expanded(
              child: AppButton(
                buttonType: ButtonType.isSecondary,
                title: 'متوجه شدم',
                customHeight: 40,
                customWidth: 136,
                onPressed: onSubmitVersionAlert,
              ),
            ),
            const SizedBox(width: 24),
          ],
          Expanded(
            child: AppButton(
              buttonType: ButtonType.isFilled,
              title: 'به روز رسانی',
              customHeight: 40,
              customWidth: 136,
              onPressed: () {
                launchInBrowser(dotenv.env['UPDATE_REDIRECT_URL']!.toString());
              },
            ),
          ),
        ],
      ),
    );
  }
}
