import 'package:ios_samx/core/base_widget/app_stepper/app_stepper.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/pages/claim_screen_1.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/pages/claim_screen_2.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/pages/claim_screen_3.dart';
import 'package:camera/camera.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import 'claim_screen_4.dart';

typedef CostDescriptionIdCallback = void Function(String costDescriptionId, String costDesc);
typedef DataCallback = void Function(String envelopID, String costItemID);
typedef InsurerCallback = void Function(String personName);
typedef CostDateCallback = void Function(String date);
typedef AmountCallback = void Function(String givenAmount);
typedef CostIdCallback = void Function(String costId);

class ClaimMainScreen extends StatefulWidget {
  final String customerCompanyId;
  final String contractId;
  final List<CameraDescription> cameras;
  const ClaimMainScreen({super.key, required this.customerCompanyId, required this.contractId, required this.cameras});

  @override
  State<ClaimMainScreen> createState() => _ClaimMainScreenState();
}

class _ClaimMainScreenState extends State<ClaimMainScreen> {
  final _processes = [
    'darmanet.cost_description',
    'darmanet.claim_information',
    'darmanet.upload_images',
    'darmanet.final_confirmation',
  ];
  int _processIndex = 0;
  final PageController _pageController = PageController(initialPage: 0, keepPage: true);
  String costDescriptionId = "";
  String costDescription = "";
  String personId = "";
  String insurer = "";
  String costDate = "";
  String amount = "";
  String envelopId = "";
  String costItemId = "";
  String costId = "";

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.darkGray,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'darmanet.new_expense_registration'.tr(),
          style: AppStyle.size18Weight700,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 74,
                width: width * .9,
                child: AppStepper(
                  activeStep: _processIndex,
                  captions: _processes,
                )),
            SizedBox(
              width: double.infinity,
              child: ExpandablePageView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  ClaimScreen1(
                    pageController: _pageController,
                    callback: (String costDescId, String costDesc) {
                      setState(() {
                        costDescriptionId = costDesc;
                        costDescription = costDescId;
                      });
                    },
                  ),
                  ClaimScreen2(
                    contractId: widget.contractId,
                    customerCompanyId: widget.customerCompanyId,
                    costDescriptionId: costDescriptionId,
                    pageController: _pageController,
                    dataCallback: (envelopID, costItemID) {
                      setState(() {
                        envelopId = envelopID;
                        costItemId = costItemID;
                      });
                    },
                    insurerCallback: (String personName) {
                      setState(() {
                        insurer = personName;
                      });
                    },
                    costDateCallback: (String date) {
                      setState(() {
                        costDate = date;
                      });
                    },
                    amountCallback: (String givenAmount) {
                      setState(() {
                        amount = givenAmount;
                      });
                    },
                  ),
                  ClaimScreen3(
                    pageController: _pageController,
                    costItemID: costItemId,
                    envelopID: envelopId,
                    costIdCallback: (String value) {
                      setState(() {
                        costId = value;
                      });
                    },
                    cameras: widget.cameras,
                  ),
                  ClaimScreen4(
                    envelopeId: envelopId,
                    costDesc: costDescription,
                    insurer: insurer,
                    costDate: costDate,
                    amount: amount,
                    costId: costId,
                  ),
                ],
                onPageChanged: (value) {
                  setState(() {
                    _processIndex = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
