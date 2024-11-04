import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/widgets/button_primary.dart';

class LoanRequestResultScreen extends StatefulWidget {
  final String message;
  const LoanRequestResultScreen({super.key, required this.message});

  @override
  State<LoanRequestResultScreen> createState() => _LoanRequestResultScreenState();
}

class _LoanRequestResultScreenState extends State<LoanRequestResultScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.fillColor,
        appBar: AppBar(
          backgroundColor: AppColors.darkGray,
          elevation: 0,
          centerTitle: true,
          title: Image(
            width: width * 0.05,
            height: height * 0.5,
            image: const AssetImage(
              'assets/images/sam_logo_white.png',
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back,
                color: AppColors.lightGrey,
              ),
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Image(
                    height: height * 0.2,
                    image: const AssetImage("assets/images/loan.png"),
                  ),
                  Container(
                    width: width * 0.9,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'cplife.load_register'.tr(),
                      style: AppStyle.size15Weight600.copyWith(color: AppColors.success),
                    ),
                  ),
                  Container(
                    width: width * 0.8,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      maxLines: 3,
                      widget.message,
                      style: AppStyle.size12Weight400.copyWith(color: AppColors.black),
                    ),
                  ),
                  const Spacer(),
                  ButtonPrimary(
                      title: "cplife.request_list_return".tr(),
                      buttonLoading: false,
                      customWidth: width * 0.9,
                      customHeight: 48,
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const DashboardScreen(),
                            type: PageTransitionType.leftToRight,
                          ),
                        );
                      }),
                  SizedBox(
                    height: height * 0.05,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
