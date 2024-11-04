import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/base_widget/app_buttons/app_button/app_button.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';

class VehicleInspectionConfirmScreen extends StatefulWidget {
  final String region;
  final String segment1;
  final String segment2;
  final String letter;
  final String token;

  const VehicleInspectionConfirmScreen(
      {super.key,
      required this.token,
      required this.region,
      required this.segment1,
      required this.segment2,
      required this.letter,});

  @override
  State<VehicleInspectionConfirmScreen> createState() => _VehicleInspectionConfirmScreenState();
}

class _VehicleInspectionConfirmScreenState extends State<VehicleInspectionConfirmScreen> {
  String? fullName = '';
  String? phoneNumber = '';
  String? token = '';
  String date = "";

  @override
  void initState() {
    Box box = Hive.box(Strings.appDBName);
    fullName = '${box.get('given_name')} ${box.get('family_name')}';
    phoneNumber = box.get(Strings.phoneId);
    token = box.get(Strings.authorization);
    date = DateTime.now().toString();
    date = ConvertDate().convertGregorianToJalali(date).toEnglishDigit().replaceAll("/", "-");
    super.initState();
  }

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
          width: width,
          height: height / 3,
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
                style: TextTypography.titleMedium.copyWith(color: colorTheme.text),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
      floatingActionButton: AppButton(
        buttonType: ButtonType.isFilled,
        title: "vehicle.continue".tr(),
        customHeight: 48,
        customWidth: width * 0.9,
        onPressed: () {
          launchUrl(Uri.parse(
              "https://lenzfront.karmast.ir/$date/samix?Region=${widget.region}&segment1=${widget.segment1}&segment2=${widget.segment2}&fullname=$fullName&phonenumber=$phoneNumber&token=qwrqworjwyr&platealphabet=${widget.letter}"));
          // Navigator.push(
          //     context,
          //     PageTransition(
          //         child: VehicleInspectionIntroScreen(token: widget.token),
          //         type: PageTransitionType.leftToRight));
        },
      ),
    );
  }
}
