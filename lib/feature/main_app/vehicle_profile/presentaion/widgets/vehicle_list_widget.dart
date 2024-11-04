import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/presentaion/widgets/plate_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';

class VehicleListWidget extends StatelessWidget {
  final String vehicleName;
  final String region;
  final String letter;
  final String segment1;
  final String segment2;
  final Widget editWidget;
  final Widget deleteWidget;

   VehicleListWidget({
    super.key,
    required this.vehicleName,
    required this.region,
    required this.letter,
    required this.segment1,
    required this.segment2,
    required this.editWidget,
    required this.deleteWidget,
  });

  Box box = Hive.box(Strings.appDBName);
  String? fullName = '';
  String? phoneNumber = '';
  String? token = '';

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return SimpleRoundedContainer(
      width: width * 0.9,
      height: height * 0.22,
      bgColor: colorTheme.layer,
      borderColor: colorTheme.layer,
      borderRadius: 8.0,
      padding: 10,
      widget: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SimpleRoundedContainer(
                  width: width * 0.85,
                  height: height * 0.08,
                  bgColor: colorTheme.bg,
                  borderColor: colorTheme.bg,
                  borderRadius: 8.0,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        width: 20,
                        image: AssetImage(
                          "assets/images/car_grey.png",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 4.0),
                        child: Text(
                          vehicleName,
                          style: TextTypography.labelLarge.copyWith(color: colorTheme.black),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PlateListWidget(
                  region: region,
                  letter: letter,
                  segment1: segment1,
                  segment2: segment2,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.09,
                      child: editWidget,
                    ),
                    SizedBox(
                      width: width * 0.09,
                      child: deleteWidget,
                    )
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: height * 0.02,
          // ),
          // Container(
          //   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.black)),
          //   child: TextButton(
          //       onPressed: () async {
          //         // bool permissionsStatus = await getPermissions();
          //
          //         // if (permissionsStatus) {
          //         String date = '';
          //
          //         fullName = '${box.get('given_name')} ${box.get('family_name')}';
          //         phoneNumber = box.get(Strings.phoneNumber);
          //         token = box.get(Strings.authorization);
          //
          //         date = ConvertDate().convertGregorianToJalali(DateTime.now().toString());
          //         urlLauncher(
          //             url:
          //                 'https://lenzfront.karmast.ir/${date.replaceAll('/', '-').toEnglishDigit()}/samix?Region=$region&segment1=$segment1&segment2=$segment2&fullname=$fullName&phonenumber=$phoneNumber&token=$token&platealphabet=$letter');
          //
          //         // }
          //       },
          //       child: const Text(
          //         "بازدید آنلاین",
          //         style: TextTypography.bodyMedium,
          //       )),
          // ),
        ],
      ),
    );
  }

  Future<bool> getPermissions() async {
    await Permission.microphone.request();
    await Permission.camera.request();
    await Permission.location.request();
    var cameraStatus = await Permission.camera.status;
    var microphoneStatus = await Permission.microphone.status;
    var locationStatus = await Permission.microphone.status;
    if (cameraStatus.isGranted && microphoneStatus.isGranted && locationStatus.isGranted) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> urlLauncher({required String url}) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
