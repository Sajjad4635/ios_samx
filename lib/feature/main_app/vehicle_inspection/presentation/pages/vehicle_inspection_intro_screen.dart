import 'package:ios_samx/core/base_widget/app_alert_dialog/index.dart';
import 'package:ios_samx/core/base_widget/app_buttons/app_button/app_button.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/expertise_status/param/expertise_status_param.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/presentation/bloc/expertise_status_bloc/expertise_status_bloc.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/presentation/pages/vehicle_inspection_status_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:location/location.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:permission_handler/permission_handler.dart' as cameraPermission;
import '../../../../../core/base_widget/app_snack_bar/app_snack_bar.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../injection_container.dart';
// import 'dart:html' as html;

class VehicleInspectionIntroScreen extends StatefulWidget {
  final String token;

  const VehicleInspectionIntroScreen({super.key, required this.token});

  @override
  State<VehicleInspectionIntroScreen> createState() => _VehicleInspectionIntroScreenState();
}

class _VehicleInspectionIntroScreenState extends State<VehicleInspectionIntroScreen> {
  int indexOfPage = 0;
  bool _serviceEnabled = false;
  // Location location = Location();
  bool _isCameraPermissionGranted = false;
  // PermissionStatus _isLocPermissionGranted = PermissionStatus.denied;
  PageController _pageController = PageController(initialPage: 0);
  late ExpertiseStatusBloc _expertiseStatusBloc;

  @override
  void initState() {
    super.initState();
    _expertiseStatusBloc = sl<ExpertiseStatusBloc>();
    _expertiseStatusBloc.add(ExpertiseStatusEvent.expertiseStatusEventCalled(
        expertiseStatusParam:
            ExpertiseStatusParam(channelId: "C9BF3BE3-7406-4604-9FE1-91DCD7810626", token: widget.token)));

    _pageController.addListener(_handlePageChange);
  }

  @override
  void dispose() {
    _pageController.removeListener(_handlePageChange);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    List<String> listOfImage = [
      "assets/images/intro.png",
      "assets/images/intro_a.png",
      "assets/images/intro_b.png",
      "assets/images/intro_c.png",
      "assets/images/intro_c.png"
    ];

    List<String> listOfDescription = [
      "vehicle.shooting_tips_a",
      "vehicle.shooting_tips_b",
      "vehicle.shooting_tips_c",
      "vehicle.shooting_tips_d",
      "vehicle.shooting_tips_e",
    ];
    return Scaffold(
      backgroundColor: colorTheme.bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: 'vehicle.shooting_tips'.tr(),
          isQrCode: false,
          onPressed: () {
            _showAlert(context);
            // _showAlert();
          },
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: height * 0.8,
            child: PageView.builder(
                controller: _pageController,
                itemCount: listOfImage.length,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    indexOfPage = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width * 0.5,
                        height: height * 0.2,
                        child: Image(
                          image: AssetImage(listOfImage[index]),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: width * 0.9,
                        // margin: EdgeInsets.only(top: height * 0.05),
                        child: Text(
                          listOfDescription[index].tr(),
                          style: TextTypography.bodyMedium.copyWith(
                            color: colorTheme.bgInverse,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DotsIndicator(
                        dotsCount: listOfImage.length,
                        position: indexOfPage,
                        decorator: DotsDecorator(
                          size: const Size.square(9.0),
                          activeColor: context.colorTheme<CustomTheme>().primary,
                          activeSize: const Size(22.0, 9.0),
                          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
      floatingActionButton: Container(
        width: width * 0.9,
        margin: EdgeInsets.only(
          bottom: height * 0.05,
          top: height * 0.05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // AppButton(
            //   buttonType: ButtonType.isFilled,
            //   title: indexOfPage == 4 ? "intro.start".tr() : "intro.next".tr(),
            //   customWidth: width * 0.4,
            //   customHeight: 48,
            //   buttonLoading: false,
            //   isFilledEnable: indexOfPage == 3 &&
            //               _isCameraPermissionGranted &&
            //               _isLocPermissionGranted == PermissionStatus.denied ||
            //           _isLocPermissionGranted == PermissionStatus.deniedForever
            //       ? false
            //       : true,
            //   onPressed: indexOfPage == 4 ? navigateToNextScreen : navigateToNextPage,
            // ),
            AppButton(
                buttonType: ButtonType.isText,
                title: "intro.reject".tr(),
                customWidth: width * 0.4,
                customHeight: 48,
                buttonLoading: false,
                onPressed: () {
                  _pageController.animateToPage(4, duration: const Duration(milliseconds: 600), curve: Curves.linear);
                }),
          ],
        ),
      ),
    );
  }

  void _handlePageChange() {
    if (_pageController.page == 3) {
      _requestCameraPermission();
    }
  }

  Future<void> _requestCameraPermission() async {
    var status = await cameraPermission.Permission.camera.status;
    if (kIsWeb) {
     //  final perm = await html.window.navigator.permissions?.query({"name": "camera"});
     //  if (perm?.state == "denied") {
     //    AppSnackBar.showSnackBar(
     //      context: context,
     //      message: 'vehicle.camera_permission_deny'.tr(),
     //      title: 'vehicle.confirm'.tr(),
     //      type: SnackBarType.error,
     //    );
     //    return;
     //  }
     //
     // await html.window.navigator.getUserMedia(video: true);
    } else if (!status.isGranted) {
      await cameraPermission.Permission.camera.request();
      setState(() {
        _isCameraPermissionGranted = true;
      });
      _requestLocationPermission();
    }
    if (status.isDenied) {
      setState(() {
        _isCameraPermissionGranted = false;
      });
      AppSnackBar.showSnackBar(
        context: context,
        message: 'vehicle.camera_permission_deny'.tr(),
        title: 'vehicle.confirm'.tr(),
        type: SnackBarType.error,
      );
      _requestLocationPermission();
    }
  }

  Future<void> _requestLocationPermission() async {
    // Check if location services are enabled
    // _serviceEnabled = await location.serviceEnabled();
    // if (!_serviceEnabled) {
    //   _serviceEnabled = await location.requestService();
    //   AppSnackBar.showSnackBar(
    //     context: context,
    //     message: 'vehicle.camera_permission_deny'.tr(),
    //     title: 'vehicle.confirm'.tr(),
    //     type: SnackBarType.error,
    //   );
    // }
    // // Check and request location permissions
    // _isLocPermissionGranted = await location.hasPermission();
    // if (_isLocPermissionGranted == PermissionStatus.denied) {
    //   _isLocPermissionGranted = await location.requestPermission();
    //   if (_isLocPermissionGranted != PermissionStatus.granted) {
    //     return; // Stop if permission is not granted
    //   }
    // }

    setState(() {});
  }

  void navigateToNextPage() {
    setState(() {
      indexOfPage += 1;
    });
    _pageController.animateToPage(indexOfPage, duration: const Duration(milliseconds: 600), curve: Curves.linear);
  }

  void navigateToNextScreen() {
    Navigator.pushReplacement(
        context, PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight));
  }

  Future<void> _showAlert(BuildContext context) async {
    final colorTheme = context.colorTheme<CustomTheme>();

    final bool shouldExit = await showDialog<bool>(
          context: context,
          barrierDismissible: false,
          // Set to true if you want to dismiss the dialog by tapping outside of it
          builder: (BuildContext context) {
            return AppAlertDialog(
              hasIcon: true,
              icon: Icon(Magicon.exclamationCircle, color: colorTheme.textVariant),
              title: "vehicle.cancel_process".tr(),
              body: "vehicle.intro_exit".tr(),
              buttons: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    buttonType: ButtonType.isFilled,
                    title: "vehicle.no".tr(),
                    customWidth: MediaQuery.of(context).size.width * 0.3,
                    customHeight: 40,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: TextButton(
                      child: Text(
                        "vehicle.yes".tr(),
                        style: TextTypography.labelLarge.copyWith(color: colorTheme.primary),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const VehicleInspectionStatusScreen(), type: PageTransitionType.leftToRight));
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ) ??
        false; // Default to false if dialog is dismissed without action

    if (shouldExit) {
      Navigator.of(context).pop(); // Pop the current route (i.e., go back)
    }
  }
}
