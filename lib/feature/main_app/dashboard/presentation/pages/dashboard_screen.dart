import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/param/get_active_by_person_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/bloc/get_active_by_person/get_active_by_person_bloc.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/presentation/pages/claim_screen.dart';
import 'package:ios_samx/feature/darmanet_app/health_care_centers/presentation/pages/healthcare_centers_list.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/presentation/pages/submit_discontent_page.dart';
import 'package:ios_samx/feature/main_app/about_us/presentation/pages/about_us_screen.dart';
import 'package:ios_samx/feature/main_app/agents_branches/presentation/pages/agents_and_branches_screen.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/requests_page_interface_screen.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/pages/profile_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/wallet_deposit/wallet_deposit_result.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/base_widget/app_snack_bar/index.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../otrs_app/presentation/pages/ticketing_list.dart';
import '../../../../otrs_app/presentation/pages/ticketing_login.dart';
import '../../../faq/presentation/pages/faq_screen.dart';
import '../../../minio/presentaion/pages/minio_authenticate_screen.dart';
import 'home_page_main.dart';

typedef ContextCallback = void Function(
  BuildContext context,
);

class DashboardScreen extends StatefulWidget {
  final String transactionId;

  const DashboardScreen({super.key, this.transactionId = ""});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  int indexOfPage = 0;

  List drawerItems = [
    "main.branches_and_reps",
    "main.contracted_healthcare_centers",
    "main.claim_services",
    "main.report_error",
    "main.about_us",
    "main.contact_support",
    "main.faq"
  ];

  late GetActiveByPersonBloc _getActiveByPersonBloc;

  bool isActiveGetActiveByPerson = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  Box box = Hive.box(Strings.appDBName);
  bool hasOtrsUserName = false;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _getActiveByPersonBloc = sl<GetActiveByPersonBloc>();

    _getActiveByPersonBloc.add(
        const GetActiveByPersonEvent.getActiveByPersonEventCalled(
            param: GetActiveByPersonParam(
                personId: null, contractKindList: [0, 1, 3])));
    _tabController.addListener(() {
      setState(() {
        indexOfPage = _tabController.index;
      });
    });

    super.initState();
  }

  DateTime currentBackPressTime = DateTime.now();
  bool canPopNow = false;
  int requiredSeconds = 2;

  void onPopInvoked(bool didPop) {
    DateTime now = DateTime.now();
    if (now.difference(currentBackPressTime) >
        Duration(seconds: requiredSeconds)) {
      currentBackPressTime = now;
      AppSnackBar.showSnackBar(
        context: context,
        message: '"${"main.double_click_to_exit".tr()}"',
        type: SnackBarType.info,
        icon: Icon(
          Magicon.infoSquare,
          size: 16,
          color: context.colorTheme<CustomTheme>().info,
        ),
      );
      Future.delayed(
        Duration(seconds: requiredSeconds),
        () {
          setState(() {
            canPopNow = false;
          });
        },
      );
      setState(() {
        canPopNow = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    hasOtrsUserName = box.get(Strings.staffUserName) == null ? false : true;
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);

    if (widget.transactionId.isNotEmpty) {
      Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
              child: WalletDepositResultScreen(
                transactionId:
                    Uri.base.queryParameters["transactionId"].toString(),
              ),
              type: PageTransitionType.rightToLeft),
          (route) => false);
    }

    return BlocProvider(
      create: (context) => _getActiveByPersonBloc,
      child: BlocConsumer<GetActiveByPersonBloc, GetActiveByPersonState>(
        bloc: _getActiveByPersonBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (failure) {
              if (failure.code == 401) {
                isActiveGetActiveByPerson = false;
              } else {
                showErrorWidget(context, failure.code, failure.message!);
              }
            },
            loadSuccess: (getActiveByPersonEntities) {
              setState(() {
                isActiveGetActiveByPerson = true;
              });
            },
            orElse: () {},
          );
        },
        builder: (context, state) => Skeletonizer(
          enabled: state is GetActiveByPersonStateLoading,
          child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: colorTheme.lightWhite,
            body: PopScope(
              canPop: canPopNow,
              onPopInvoked: onPopInvoked,
              child: TabBarView(
                controller: _tabController,
                children: [
                  widget.transactionId.isNotEmpty
                      ? WalletDepositResultScreen(
                          transactionId: widget.transactionId)
                      : HomePageMain(
                          isActiveGetActiveByPerson: isActiveGetActiveByPerson,
                        ),
                  RequestsPageInterfaceScreen(
                    isActiveGetActiveByPerson: isActiveGetActiveByPerson,
                  ),
                  ProfileScreen(
                    contextCallback: (BuildContext context) {
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            drawer: Drawer(
              backgroundColor: Colors.white,
              child: Container(
                alignment: Alignment.topCenter,
                height: height,
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 30,
                          color: AppColors.gray,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Visibility(
                        visible: hasOtrsUserName,
                        child: GestureDetector(
                          child: Container(
                            margin: const EdgeInsetsDirectional.only(
                              // bottom: 10,
                              start: 20,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "main.list_tickets".tr(),
                                  style: TextTypography.titleSmall
                                      .copyWith(color: colorTheme.text),
                                ).tr(),
                                const SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  height: height * 0.04,
                                  width: width * 0.2,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: colorTheme.primaryContainer,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Text(
                                    "main.only_saman_users".tr(),
                                    style: TextTypography.labelSmall.copyWith(
                                        color: colorTheme.onPrimaryContainer),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            String? sessionId = box.get(Strings.sessionID);
                            if (sessionId == null) {
                              box.put(Strings.otrsAfterLogin,
                                  Strings.otrsListTicket);
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: const TicketingLoginScreen(),
                                  type: PageTransitionType.leftToRight,
                                ),
                              );
                            } else {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: TicketingListScreen(
                                      sessionID: sessionId,
                                      userLogin:
                                          box.get(Strings.staffUserName)),
                                  type: PageTransitionType.leftToRight,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Visibility(
                        visible: hasOtrsUserName,
                        child: GestureDetector(
                          child: Container(
                            margin: const EdgeInsetsDirectional.only(
                              bottom: 10,
                              start: 20,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "main.my_driver".tr(),
                                  style: TextTypography.titleSmall
                                      .copyWith(color: colorTheme.text),
                                ).tr(),
                                const SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  height: height * 0.04,
                                  width: width * 0.2,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: colorTheme.primaryContainer,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Text(
                                    "ویژه پرسنل",
                                    style: TextTypography.labelSmall.copyWith(
                                        color: colorTheme.onPrimaryContainer),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                      ),
                      //  SizedBox(height: height* 0.01,),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.45,
                        child: ListView.builder(
                            itemCount: drawerItems.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  _scaffoldKey.currentState?.closeDrawer();
                                  if (index == 0) {
                                    Navigator.pushReplacement(
                                        context,
                                        PageTransition(
                                            child:
                                                const AgentsAndBranchesScreen(),
                                            type: PageTransitionType
                                                .leftToRight));
                                  }
                                  if (index == 1) {
                                       if (isActiveGetActiveByPerson) {
                                    Navigator.pushReplacement(
                                        context,
                                        PageTransition(
                                            child: const HealthCareCenters(),
                                            type: PageTransitionType
                                                .leftToRight));
                                        } else {
                                          AppSnackBar.showSnackBar(
                                            context: context,
                                            type: SnackBarType.info,
                                            title: 'main.confirm'.tr(),
                                            message: "home.no_supplementary_insurance".tr(),
                                          );
                                        }
                                  }
                                  if (index == 2) {
                                    if (isActiveGetActiveByPerson) {
                                      Navigator.pushReplacement(
                                          context,
                                          PageTransition(
                                              child: const ClaimScreen(),
                                              type: PageTransitionType
                                                  .leftToRight));
                                    } else {
                                      AppSnackBar.showSnackBar(
                                        context: context,
                                        type: SnackBarType.info,
                                        title: 'main.confirm'.tr(),
                                        message:
                                            "home.no_supplementary_insurance"
                                                .tr(),
                                      );
                                    }
                                  }
                                  if (index == 3) {
                                    if (isActiveGetActiveByPerson) {
                                      Navigator.pushReplacement(
                                          context,
                                          PageTransition(
                                              child:
                                                  const SubmitDiscontentScreen(),
                                              type: PageTransitionType
                                                  .leftToRight));
                                    } else {
                                      AppSnackBar.showSnackBar(
                                        context: context,
                                        type: SnackBarType.info,
                                        title: 'main.confirm'.tr(),
                                        message:
                                            "home.no_supplementary_insurance"
                                                .tr(),
                                      );
                                    }
                                  }
                                  if (index == 4) {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: const AboutUsScreen(),
                                            type: PageTransitionType
                                                .leftToRight));
                                  }
                                  if (index == 5) {
                                    phoneLauncher(phoneNumber: '0218943');
                                  }
                                  if (index == 6) {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: const FaqScreen(),
                                            type: PageTransitionType
                                                .leftToRight));
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsetsDirectional.only(
                                    bottom: 20,
                                    top: height * 0.01,
                                    start: 20,
                                  ),
                                  child: Text(
                                    drawerItems[index],
                                    style: TextTypography.titleSmall
                                        .copyWith(color: colorTheme.text),
                                  ).tr(),
                                ),
                              );
                            }),
                      ),
                      const Spacer(),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          " نسخه ${FlavorConfig.instance.variables["version"]!}".toPersianDigit(),
                          style: TextTypography.labelLarge
                              .copyWith(color: colorTheme.textVariant),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      /*               GestureDetector(
                          onTap: () async {
                            await confirmExit(context);
                          },
                          child: Container(
                            margin: const EdgeInsetsDirectional.only(
                                start: 20, bottom: 20),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: AppColors.secondary,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "main.logout".tr(),
                                  style: AppStyle.size14Weight500
                                      .copyWith(color: AppColors.secondary),
                                )
                              ],
                            ),
                          ),
                        ),*/
                    ],
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: colorTheme.bgInverse,
              elevation: 0,
              iconTheme: IconThemeData(color: colorTheme.white),
              centerTitle: true,
              title: SizedBox(
                height: 25,
                child: Image(
                  color: colorTheme.white,
                  image: const AssetImage(
                    "assets/images/sam_logo_white.png",
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: indexOfPage,
              backgroundColor: Colors.white,
              selectedItemColor: colorTheme.primary,
              unselectedItemColor: colorTheme.textVariant,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: AppStyle.size12Weight500,
              unselectedLabelStyle: AppStyle.size12Weight500,
              onTap: (index) {
                setState(() {
                  indexOfPage = index;
                  _tabController.animateTo(index);
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Image(
                      height: 25,
                      image: AssetImage("assets/images/home_icon.png"),
                      color: AppColors.gray50,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      height: 30,
                      image: const AssetImage("assets/images/home_icon.png"),
                      color: colorTheme.primary,
                    ),
                  ),
                  label: "main.home".tr(),
                ),
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Image(
                        height: 25,
                        image: AssetImage("assets/images/shape_icon.png")),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      height: 30,
                      image: const AssetImage("assets/images/shape_icon.png"),
                      color: colorTheme.primary,
                    ),
                  ),
                  label: "main.requests".tr(),
                ),
                BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Image(
                      height: 25,
                      image: AssetImage("assets/images/profile_icon.png"),
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      height: 30,
                      image: const AssetImage("assets/images/profile_icon.png"),
                      color: colorTheme.primary,
                    ),
                  ),
                  label: "main.profile".tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> phoneLauncher({required String phoneNumber}) async {
    if (!await launchUrl(Uri.parse('tel://$phoneNumber'))) {
      throw Exception('Could not launch $phoneNumber');
    }
  }
}
