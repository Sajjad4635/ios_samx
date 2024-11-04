import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SimpleFooterRoundedContainer extends StatelessWidget {
  final double width;
  final double height;
  final double topPosition;
  final double topPositionMain;
  final double leftPosition;
  final double widthPositionContainer;
  final double heightPositionContainer;
  final double widthMain;
  final double heightMain;

  // final String caption;
  final Color bgColor;
  final Color mainBorderColor;
  final Color headerBgColor;
  final Color headerBorderColor;
  final Color borderColor;
  final double headerBorderRadius;
  final double mainBorderRadius;
  final double borderRadius;
  void Function()? onTap;

  final Widget? headerWidget;
  final Widget? mainWidget;

  SimpleFooterRoundedContainer({
    super.key,
    this.onTap,
    required this.width,
    required this.height,
    // required this.caption,
    required this.bgColor,
    required this.borderRadius,
    required this.borderColor,
    required this.headerBgColor,
    required this.headerBorderColor,
    required this.headerBorderRadius,
    required this.topPosition,
    required this.leftPosition,
    required this.widthPositionContainer,
    required this.heightPositionContainer,
    required this.topPositionMain,
    required this.widthMain,
    required this.heightMain,
    this.headerWidget,
    required this.mainBorderColor,
    required this.mainBorderRadius,
    this.mainWidget,
    // this.widget,
    // this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: MediaQuery.of(context).size.height * 0.32,
      // color: Colors.red.withOpacity(0.50),

      child: Stack(
        children: [
          Positioned(
            top: topPositionMain,
            child: SizedBox(
              width: widthMain,
              // color: Colors.black.withOpacity(0.50),
              height: MediaQuery.of(context).size.height * 0.27,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: widthMain,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        border: Border.all(color: mainBorderColor),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(mainBorderRadius),
                          topRight: Radius.circular(mainBorderRadius),
                        )),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.04),
                      child: mainWidget,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.lightBlue,
                          border: Border.all(color: AppColors.lightBlue),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "مشاهده جزئیات",
                            style: AppStyle.size13Weight600primary,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: topPosition,
            left: leftPosition,
            child: Container(
              width: widthPositionContainer,
              height: heightPositionContainer,
              decoration: BoxDecoration(
                  color: headerBgColor,
                  border: Border.all(color: headerBorderColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(headerBorderRadius),
                  )),
              child: headerWidget,
            ),
          ),
        ],
      ),
    );
  }
}
