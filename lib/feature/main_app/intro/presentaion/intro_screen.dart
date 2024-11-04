import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/pages/sso_auth_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:page_transition/page_transition.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<String> listOfTitle = [
    "intro.car_insurance",
    "intro.life_insurance",
    "intro.travel_insurance",
    "intro.medical_insurance_claim",
  ];

  List<String> listOfDescription = [
    "intro.desc_car_insurance",
    "intro.desc_life_insurance",
    "intro.desc_travel_insurance",
    "intro.desc_medical_insurance_claim",
  ];

  List<String> listOfImage = [
    "assets/images/intro_auto.png",
    "assets/images/intro_life.png",
    "assets/images/intro_travel.png",
    "assets/images/intro_care.png"
  ];
  PageController pageController = PageController(initialPage: 0);

  int indexOfPage = 0;

  void navigateToNextPage() {
    setState(() {
      indexOfPage += 1;
    });
    pageController.animateToPage(indexOfPage,
        duration: const Duration(milliseconds: 600), curve: Curves.linear);
  }

  void navigateToLogin() {
    Navigator.pushReplacement(
        context,
        PageTransition(
            child: const SsoAuthScreen(),
            type: PageTransitionType.leftToRight));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Image(
          image: AssetImage("assets/images/logo.png"),
          height: 24,
          width: 24,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height * 0.7,
            child: PageView.builder(
                controller: pageController,
                itemCount: listOfImage.length,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    indexOfPage = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: width * 0.9,
                        margin: EdgeInsets.only(top: height * 0.1),
                        child: Text(
                          listOfTitle[index].tr(),
                          style: AppStyle.size17Weight700,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        width: width * 0.9,
                        child: Text(
                          listOfDescription[index].tr(),
                          style: AppStyle.size12Weight400,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: width * 0.8,
                        alignment: Alignment.bottomCenter,
                        height: height * 0.4,
                        child: Image(
                          image: AssetImage(listOfImage[index]),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            width: width * 0.9,
            margin: EdgeInsets.only(
              bottom: height * 0.05,
              top: height * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonPrimary(
                  title:
                      indexOfPage == 3 ? "intro.start".tr() : "intro.next".tr(),
                  customWidth: 600 * 0.35,
                  customHeight: 48,
                  buttonLoading: false,
                  onPressed:
                      indexOfPage == 3 ? navigateToLogin : navigateToNextPage,
                ),
                DotsIndicator(
                  dotsCount: listOfImage.length,
                  position: indexOfPage,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeColor: context.colorTheme<CustomTheme>().primary,
                    activeSize: const Size(22.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height + 75, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
