import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/bloc/life_insurances/life_insurances_bloc.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/insurances_list_screen.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/life_insurances_list_screen.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/pages/tickets_insurances_screen.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/pages/claim_screen.dart';
import 'package:ios_samx/feature/darmanet_app/cost_tracking/presentation/pages/claim_followup_screen.dart';
import 'package:ios_samx/feature/darmanet_app/introduction_tracking/presentation/pages/introduction_request_follow_up_main_screen.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/widget/body_item.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/widget/header_item.dart';
import 'package:ios_samx/feature/main_app/minio/presentaion/pages/minio_authenticate_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/wallet_screen.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticket_form.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_list.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_login.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constant/theme/typography.dart';
import '../../../vehicle_inspection/presentation/pages/vehicle_inspection_status_screen.dart';
import '../../../vehicle_inspection/presentation/pages/vehicle_list_screen.dart';
import '../../../vehicle_service/presentation/pages/vehicle_service_screen.dart';
import '../widget/body_single_item.dart';

class HomePageMain extends StatefulWidget {
  final bool isActiveGetActiveByPerson;

  const HomePageMain({
    super.key,
    required this.isActiveGetActiveByPerson,
  });

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  late LifeInsurancesBloc _lifeInsurancesBloc;

  final List<String> imgList = [
    'assets/images/home_banner_2.png',
    // 'assets/images/home_banner.png',
  ];

  final List iconOfInsuranceServices = [
    "assets/images/car_icon.png",
    "assets/images/life_icon.png",
    "assets/images/phone_frame_icon.png",
    "assets/images/fire_frame_icon.png",
    "assets/images/response_icon.png",
    "assets/images/car_frame_icon.png",
  ];

  final List titleOfInsuranceServices = [
    ["home.third_party", "https://sales.si24.ir/"],
    ["home.life", "https://life.si24.ir/#/"],
    ["home.mobile", "https://di.si24.ir/pwa/tabs/home"],
    ["home.fire", "https://fireinsurance.si24.ir/FireInsurance/Login"],
    ["home.travel", "https://www.si24.ir/fa/travel-insurance"],
    ["home.cargo", "https://cargo.si24.ir/#/"],
  ];

  bool isActiveLifeInsurance = false;

  Box box = Hive.box(Strings.appDBName);
  bool hasOtrsUserName = false;

  int _indexOfBanner = 0;

  String givenName = "";
  String familyName = "";
  String staffUser = "";

  @override
  void initState() {
    _lifeInsurancesBloc = sl<LifeInsurancesBloc>();
    Box box = Hive.box(Strings.appDBName);
    givenName = box.get("given_name");
    familyName = box.get("family_name");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _lifeInsurancesBloc,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<LifeInsurancesBloc, LifeInsurancesState>(
            bloc: _lifeInsurancesBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  isActiveLifeInsurance = false;
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (lifeInsurancesResponseEntities) {
                  if (lifeInsurancesResponseEntities.lifeInsurancesResponseData.isNotEmpty) {
                    setState(() {
                      isActiveLifeInsurance = true;
                    });
                  }
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: BlocBuilder<LifeInsurancesBloc, LifeInsurancesState>(
          bloc: _lifeInsurancesBloc,
          builder: (context, state) {
            final bool loadingOfLifeInsurance = state is LifeInsurancesStateLoading;
            return loadingOfLifeInsurance
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: width,
                              height: height * 0.22,
                              color: colorTheme.bgInverse,
                              child: Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(top: 5),
                                    height: height * 0.05,
                                    child: Text(
                                      "home.welcome".tr(args: ["$givenName"]),
                                      style: AppStyle.size18wWeight700,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: height * 0.12,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("assets/images/rec.png"),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width * .9,
                              margin: EdgeInsets.only(top: height * 0.06, left: width * 0.05, right: width * 0.05),
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  HeaderItems(
                                    width: width * 0.28,
                                    height: height * 0.1,
                                    backgroundColor: colorTheme.white,
                                    textStyle: AppStyle.size14Weight500Green,
                                    imgWidth: width * 0.06,
                                    imgHeight: height * 0.04,
                                    imgName: 'assets/images/ins_icon.png',
                                    imgColor: colorTheme.success,
                                    caption: 'home.my_insurance'.tr(),
                                    badgeColor: colorTheme.success,
                                    badgeCount: 5,
                                    tooltipMessage: "",
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                          child: const InsurancesListScreen(),
                                          type: PageTransitionType.leftToRight,
                                        ),
                                      );
                                    },
                                  ),
                                  HeaderItems(
                                    width: width * 0.28,
                                    height: height * 0.1,
                                    backgroundColor: Colors.white,
                                    textStyle: AppStyle.size14Weight500Orange,
                                    imgWidth: width * 0.05,
                                    imgHeight: height * 0.04,
                                    imgName: 'assets/images/damage_icon_or.png',
                                    caption: "home.claims".tr(),
                                    tooltipMessage: "",
                                    imgColor: colorTheme.warning,
                                    badgeColor: colorTheme.warning,
                                    badgeCount: 2,
                                    onTap: () {
                                      if (widget.isActiveGetActiveByPerson) {
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                            child: const ClaimFollowupScreen(),
                                            type: PageTransitionType.leftToRight,
                                          ),
                                        );
                                      } else {
                                        showInfoWidget(context, "home.no_supplementary_insurance".tr());
                                      }
                                    },
                                  ),
                                  HeaderItems(
                                    width: width * 0.28,
                                    height: height * 0.1,
                                    backgroundColor: Colors.white,
                                    textStyle: AppStyle.size14Weight500Blue,
                                    imgWidth: width * 0.07,
                                    imgHeight: height * 0.04,
                                    imgName: 'assets/images/empty_wallet_icon.png',
                                    imgColor: colorTheme.primary,
                                    caption: "home.wallet".tr(),
                                    tooltipMessage: "",
                                    badgeColor: colorTheme.primary,
                                    badgeCount: 0,
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              child: const WalletScreen(), type: PageTransitionType.leftToRight));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: hasOtrsUserName,
                          child: Container(
                              color: Colors.white,
                              margin: const EdgeInsets.only(top: 16, bottom: 32, left: 16, right: 16),
                              width: width,
                              height: height * 0.22,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      const SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: Image(
                                            image: AssetImage(
                                              "assets/images/tickets_icon.png",
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.only(
                                          start: 4.0,
                                        ),
                                        child: Text(
                                          'main.my_tickets'.tr(),
                                          style: AppStyle.size16Weight700,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      BodyItem(
                                        width: width * 0.28,
                                        height: height * 0.11,
                                        imgWidth: 25,
                                        imgHeight: 25,
                                        imgName: "assets/images/personal_info.png",
                                        caption: "main.register_request".tr(),
                                        textStyle: AppStyle.size13Weight600primary,
                                        onTap: () {
                                          String? sessionId = box.get(Strings.sessionID);
                                          if (sessionId == null) {
                                            box.put(Strings.otrsAfterLogin, Strings.otrsNewTicket);
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                child: const TicketingLoginScreen(),
                                                type: PageTransitionType.leftToRight,
                                              ),
                                            );
                                          } else {
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                child: NewTicketFormScreen(
                                                  sessionID: sessionId,
                                                  customerUser: box.get(Strings.staffUserName),
                                                ),
                                                type: PageTransitionType.leftToRight,
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                      BodyItem(
                                        width: width * 0.28,
                                        height: height * 0.11,
                                        imgWidth: 25,
                                        imgHeight: 25,
                                        imgName: "assets/images/note_icon.png",
                                        caption: "main.requests".tr(),
                                        textStyle: AppStyle.size13Weight600primary,
                                        onTap: () {
                                          String? sessionId = box.get(Strings.sessionID);
                                          if (sessionId == null) {
                                            box.put(Strings.otrsAfterLogin, Strings.otrsListTicket);
                                            Navigator.push(
                                                context,
                                                PageTransition(
                                                    child: const TicketingLoginScreen(),
                                                    type: PageTransitionType.leftToRight));
                                          } else {
                                            Navigator.push(
                                                context,
                                                PageTransition(
                                                    child: TicketingListScreen(
                                                      sessionID: box.get(Strings.sessionID),
                                                      userLogin: box.get(Strings.staffUserName),
                                                    ),
                                                    type: PageTransitionType.leftToRight));
                                          }
                                        },
                                      ),
                                      BodyItem(
                                        width: width * 0.28,
                                        height: height * 0.11,
                                        imgWidth: 25,
                                        imgHeight: 25,
                                        imgName: "assets/images/minio_icon.png",
                                        caption: 'main.my_driver'.tr(),
                                        textStyle: AppStyle.size13Weight600primary,
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                              child: const MinioAuthenticateScreen(),
                                              type: PageTransitionType.leftToRight,
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                        Container(
                          width: width * 0.9,
                          margin: const EdgeInsets.only(top: 16),
                          child: Row(
                            children: [
                              const SizedBox(
                                  height: 25,
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/damage_cost_icon.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 4.0,
                                ),
                                child: Text(
                                  'main.damage_treatment'.tr(),
                                  style: AppStyle.size16Weight700,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16, bottom: 32, left: 16, right: 16),
                          width: width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BodyItem(
                                width: width * 0.28,
                                height: height * 0.11,
                                imgWidth: 25,
                                imgHeight: 25,
                                imgName: "assets/images/plus.png",
                                caption: 'main.register_damage'.tr(),
                                textStyle: AppStyle.size13Weight600primary,
                                onTap: () {
                                  if (widget.isActiveGetActiveByPerson) {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: const ClaimScreen(),
                                        type: PageTransitionType.leftToRight,
                                      ),
                                    );
                                  } else {
                                    showInfoWidget(context, "main.no_supplementary_insurance".tr());
                                  }
                                },
                              ),
                              BodyItem(
                                width: width * 0.28,
                                height: height * 0.11,
                                imgWidth: 25,
                                imgHeight: 25,
                                imgName: "assets/images/frame_search.png",
                                caption: 'main.damage_follow_up'.tr(),
                                textStyle: AppStyle.size13Weight600primary,
                                onTap: () {
                                  if (widget.isActiveGetActiveByPerson) {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: const ClaimFollowupScreen(),
                                        type: PageTransitionType.leftToRight,
                                      ),
                                    );
                                  } else {
                                    showInfoWidget(context, "main.no_supplementary_insurance".tr());
                                  }
                                },
                              ),
                              BodyItem(
                                width: width * 0.28,
                                height: height * 0.11,
                                imgWidth: 25,
                                imgHeight: 25,
                                imgName: "assets/images/frame_dl.png",
                                caption: 'main.referral'.tr(),
                                textStyle: AppStyle.size13Weight600primary,
                                onTap: () {
                                  if (widget.isActiveGetActiveByPerson) {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: const IntroductionRequestFollowupMainScreen(),
                                        type: PageTransitionType.leftToRight,
                                      ),
                                    );
                                  } else {
                                    showInfoWidget(context, "main.no_supplementary_insurance".tr());
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Column(children: [
                          SizedBox(
                            height: height * 0.3,
                            width: width * 0.9,
                            child: PageView.builder(
                              onPageChanged: (value) {
                                setState(() {
                                  _indexOfBanner = value;
                                });
                              },
                              itemCount: imgList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      if (index == 0) {
                                        launchUrl(Uri.parse("https://www.si24.ir/fa/travel-insurance"));
                                      }
                                    },
                                    child: Image.asset(imgList[index]));
                              },
                            ),
                          ),
                          DotsIndicator(
                            dotsCount: imgList.length,
                            position: _indexOfBanner,
                            decorator: DotsDecorator(
                              size: const Size.square(9.0),
                              activeColor: colorTheme.primary,
                              activeSize: const Size(22.0, 9.0),
                              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        ]),
                        Container(
                          width: width * 0.9,
                          margin: const EdgeInsets.only(top: 32),
                          child: Row(
                            children: [
                              const SizedBox(
                                  height: 25,
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/shield_heart_gray.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(start: 4.0),
                                child: Text(
                                  'main.life_request'.tr(),
                                  style: AppStyle.size16Weight700,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16, bottom: 32),
                          width: width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BodyItem(
                                width: width * 0.42,
                                height: height * 0.11,
                                imgWidth: 25,
                                imgHeight: 25,
                                imgName: "assets/images/plus.png",
                                caption: 'main.register_request'.tr(),
                                textStyle: AppStyle.size13Weight600primary,
                                onTap: () {
                                  if (isActiveLifeInsurance = true) {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: const MainLifeInsurancesScreen(),
                                        type: PageTransitionType.leftToRight,
                                      ),
                                    );
                                  }
                                },
                              ),
                              BodyItem(
                                width: width * 0.42,
                                height: height * 0.11,
                                imgWidth: 25,
                                imgHeight: 25,
                                imgName: "assets/images/frame_search.png",
                                caption: 'main.damage_follow_up'.tr(),
                                textStyle: AppStyle.size13Weight600primary,
                                onTap: () {
                                  if (isActiveLifeInsurance = true) {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: const TicketsInsurancesScreen(),
                                        type: PageTransitionType.leftToRight,
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.9,
                          margin: const EdgeInsets.only(top: 32),
                          child: Row(
                            children: [
                              const SizedBox(
                                  height: 25,
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/car.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(start: 4.0),
                                child: Text(
                                  'main.vehicle_services'.tr(),
                                  style: AppStyle.size16Weight700,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16, bottom: 32),
                          width: width * 0.9,
                          child: Column(
                            children: [
                              BodyItem(
                                width: width * 0.9,
                                height: height * 0.10,
                                imgWidth: 25,
                                imgHeight: 25,
                                imgName: "assets/images/carl.png",
                                caption: 'main.car_services'.tr(),
                                textStyle: TextTypography.titleSmall.copyWith(color: colorTheme.onPrimaryContainer),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: const VehicleServiceScreen(),
                                      type: PageTransitionType.leftToRight,
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BodySingleItem(
                                    width: width * 0.43,
                                    height: 50,
                                    imgName: "assets/images/camera-circle.png",
                                    caption: 'main.online_visit_of_the_car'.tr(),
                                    textStyle: TextTypography.titleSmall.copyWith(color: colorTheme.onPrimaryContainer),
                                    onTap: () {
                                      Navigator.push(
                                          context, PageTransition(child: const VehicleListScreen(), type: PageTransitionType.leftToRight));
                                    },
                                  ),
                                  BodySingleItem(
                                    width: width * 0.43,
                                    height: 50,
                                    imgName: "assets/images/clipboard-list.png",
                                    caption: 'main.inspection_list'.tr(),
                                    textStyle: TextTypography.titleSmall.copyWith(color: colorTheme.onPrimaryContainer),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(child: const VehicleInspectionStatusScreen(), type: PageTransitionType.leftToRight));
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        // Container(
                        //   width: width * 0.9,
                        //   margin: const EdgeInsets.only(top: 16),
                        //   child: Row(
                        //     children: [
                        //       const SizedBox(
                        //           height: 25,
                        //           child: Image(
                        //             image: AssetImage(
                        //               "assets/images/shield.png",
                        //             ),
                        //           )),
                        //       Padding(
                        //         padding: const EdgeInsetsDirectional.only(
                        //             start: 4.0),
                        //         child: Text(
                        //           'main.types_of_insurance_policies'.tr(),
                        //           style: AppStyle.size16Weight700,
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   width: width * 0.9,
                        //   margin: const EdgeInsets.only(top: 16, bottom: 16),
                        //   child: AutoHeightGridView(
                        //     shrinkWrap: true,
                        //     crossAxisCount: 3,
                        //     physics: const NeverScrollableScrollPhysics(),
                        //     itemCount: 6,
                        //     builder: (BuildContext ctx, int index) {
                        //       return GestureDetector(
                        //         onTap: () {
                        //           setState(() {
                        //             if (titleOfInsuranceServices[index][1] !=
                        //                 "") {
                        //               launchUrl(Uri.parse(
                        //                   titleOfInsuranceServices[index][1]));
                        //             }
                        //           });
                        //         },
                        //         child: Column(
                        //           children: [
                        //             Container(
                        //               alignment: Alignment.center,
                        //               decoration: BoxDecoration(
                        //                 color: const Color(0xffffffff),
                        //                 borderRadius: BorderRadius.circular(8),
                        //                 boxShadow: [AppShadow.shadow1],
                        //               ),
                        //               padding: const EdgeInsets.all(20),
                        //               child: Image(
                        //                 height: height * 0.06,
                        //                 image: AssetImage(
                        //                   iconOfInsuranceServices[index],
                        //                 ),
                        //               ),
                        //             ),
                        //             const SizedBox(
                        //               height: 10,
                        //             ),
                        //             Text(
                        //               titleOfInsuranceServices[index][0],
                        //               style: AppStyle.size14Weight400
                        //                   .copyWith(color: Colors.black),
                        //             ).tr(),
                        //           ],
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
