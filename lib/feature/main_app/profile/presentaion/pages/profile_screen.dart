import 'dart:core';
import 'package:ios_samx/core/base_widget/index.dart'
    show AppButton, AppErrorButton, AppSnackBar, AppTextField, ButtonErrorType, ButtonType, SnackBarType;
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/widget/custom_button.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/pages/personal_info.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/pages/profile_info.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/widgets/custom_alert_dialog.dart';
import 'package:ios_samx/feature/main_app/relatives/presentation/pages/relative_list_screen.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/pages/sso_auth_screen.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/strings.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../injection_container.dart';
import '../../../finance_profile/presentaion/pages/profile_finance_screen.dart';
import '../../../vehicle_profile/presentaion/pages/vehicle_list_screen.dart';
import '../../domain/entities/get_profile/get_profile_response_data/get_profile_response_data.dart';
import '../../domain/entities/get_score/get_score_entity.dart';
import '../../domain/entities/get_score/get_score_response_data/get_score_response_data.dart';
import '../../domain/usecase/get_staff/param/get_staff_param.dart';
import '../bloc/get_profile/get_profile_bloc.dart';
import '../bloc/get_score/get_score_bloc.dart';
import '../bloc/get_staff/get_staff_bloc.dart';
import '../widgets/profile_image_with_score.dart';

class ProfileScreen extends StatefulWidget {
  final ContextCallback contextCallback;

  const ProfileScreen({super.key, required this.contextCallback});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

enum Answers { yes, no }

enum ScoreStatus {
  none,
  blue,
  bronze,
  silver,
  gold,
  platinum,
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final bool answer;
  late bool visibility = false;
  String firstName = '';
  String lastName = '';
  String phoneNo = '';
  String? staffUser = '';
  String totalScore = '------';
  String loyaltyScore = '------';
  bool isPersian = true;
  ScoreStatus status = ScoreStatus.none;
  TextEditingController staffUserNameController = TextEditingController();
  String userName = '';

  GetProfileResponseData getProfileResponseData = const GetProfileResponseData();
  late GetProfileBloc _getProfileBloc;
  late GetStaffBloc _getStaffBloc;
  late GetScoreBloc _getScoreBloc;
   DateTime? currentBackPressTime;


  @override
  void initState() {
    _getProfileBloc = sl<GetProfileBloc>();
    _getStaffBloc = sl<GetStaffBloc>();
    _getScoreBloc = sl<GetScoreBloc>();
    _getProfileBloc.add(
      GetProfileEvent.getProfileEventCalled(
        noParams: NoParams(),
      ),
    );
    _getScoreBloc.add(GetScoreEvent.getScoreEventCalled(noParam: NoParams()));

    super.initState();
  }

  bool getSwitchValue(Box box) {
    final systemThemeMode = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    if (box.get("theme_mode") != null) {
      return box.get("theme_mode") == "light" ? false : true;
    } else {
      return (systemThemeMode == Brightness.dark) == true ? true : false;
    }
  }

  ScoreStatus convertScoreToStatus({required double loyaltyScore}) {
    if (loyaltyScore <= 500) {
      return ScoreStatus.blue;
    } else if (loyaltyScore > 500 && loyaltyScore <= 1000) {
      return ScoreStatus.bronze;
    } else if (loyaltyScore > 1000 && loyaltyScore <= 2000) {
      return ScoreStatus.silver;
    } else if (loyaltyScore > 2000 && loyaltyScore <= 10000) {
      return ScoreStatus.gold;
    } else if (loyaltyScore > 10000) {
      return ScoreStatus.platinum;
    }

    return ScoreStatus.none;
  }



  @override
  Widget build(BuildContext ctx) {
    Answers? select = Answers.no;
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(ctx).size.height;
    final Box box = Hive.box(Strings.appDBName);

    staffUser = box.get(Strings.staffUserName);

    final colorTheme = context.colorTheme<CustomTheme>();

    // != null
    // ? (box.get("theme_mode") == "dark" ? DarkMyTheme() : LightMyTheme())
    // : LightMyTheme() ;

    List<IconTitle> iconTitles = [
      IconTitle("main.personal".tr(), Icon(Magicon.folderUser, color: colorTheme.text), () {
        Navigator.push(
          ctx,
          PageTransition(
            child: ProfileInfo(
              getProfileResponseData: getProfileResponseData,
            ),
            type: PageTransitionType.leftToRight,
          ),
        );
      }),

      IconTitle("main.personnel".tr(), Icon(Magicon.buildings, color: colorTheme.text), () {
        staffUser == null
            ? getStaffUsername(ctx, box, select, width, colorTheme)
            : Navigator.push(ctx, PageTransition(child: const PersonalInfo(), type: PageTransitionType.leftToRight));
      }),

      IconTitle("main.financial".tr(), Icon(Magicon.briefcaseMoney, color: colorTheme.text), () {
        Navigator.push(
            context, PageTransition(child: const ProfileFinanceScreen(), type: PageTransitionType.leftToRight));
      }),
      IconTitle("main.property".tr(), Icon(Magicon.taxi, color: colorTheme.text), () {
        Navigator.push(context, PageTransition(child: const VehicleListScreen(), type: PageTransitionType.leftToRight));
      }),


      IconTitle("main.relatives".tr(), Icon(Magicon.usersGroup, color: colorTheme.text), () {
        Navigator.push(context, PageTransition(child: const RelativeListScreen(), type: PageTransitionType.leftToRight));
      }),

      // IconTitle("سلامت", const Icon(Magicon.stethoscope, color:LightTheme.text ) ,   () {} ),
    ];

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _getProfileBloc),
        BlocProvider(create: (context) => _getStaffBloc),
        BlocProvider(create: (context) => _getScoreBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<GetProfileBloc, GetProfileState>(
            bloc: _getProfileBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (entities) {
                  setState(() {
                    firstName = entities.getProfileResponseData.firstName!;
                    lastName = entities.getProfileResponseData.lastName!;
                    phoneNo = entities.getProfileResponseData.phoneNumber!;
                    getProfileResponseData = entities.getProfileResponseData;
                    staffUser = entities.getProfileResponseData.staffUsername;
                    box.put(Strings.staffUserName, entities.getProfileResponseData.staffUsername);
                  });
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetStaffBloc, GetStaffState>(
            bloc: _getStaffBloc,
            listener: (context, state) {
              state.maybeWhen(
                loading: () {},
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (getStaffEntities) {
                  setState(() {
                    staffUser = userName;
                    box.put(Strings.staffUserName, staffUser);

                    AppSnackBar.showSnackBar(
                        context: context,
                        type: SnackBarType.success,
                        title: "main.confirm".tr(),
                        message: "main.staff_update".tr());
                  });
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetScoreBloc, GetScoreState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (getScoreEntity) {
                  setState(() {
                    GetScoreEntity entity = getScoreEntity;
                    GetScoreResponseData responseData = entity.responseData;
                    totalScore = responseData.totalScore.toStringAsFixed(0);

                    status = convertScoreToStatus(loyaltyScore: responseData.loyaltyScore);
                    loyaltyScore = responseData.loyaltyScore.toStringAsFixed(0);
                  });
                },
              );
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: colorTheme.bg,
          body: BlocBuilder<GetProfileBloc, GetProfileState>(
            bloc: _getProfileBloc,
            builder: (context, state) {
              final loading = state is GetUserProfileStateLoading;
              return BlocBuilder<GetScoreBloc, GetScoreState>(
                bloc: _getScoreBloc,
                builder: (context, state) {
                  final loadingGetScore = state is GetScoreStateLoading;
                  return Skeletonizer(
                    enabled: loading || loadingGetScore,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                              height: 141,
                              width: width,
                              decoration: BoxDecoration(
                                color: colorTheme.bgInverse,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     ProfileImageWithScore(status: status, gender: getProfileResponseData.gender,),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              if (firstName.isNotEmpty && lastName.isNotEmpty)
                                                Expanded(
                                                  child: Text(
                                                    "$firstName $lastName",
                                                    style: TextTypography.titleLarge.copyWith(
                                                      color: colorTheme.bg,
                                                    ),
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: colorTheme.white,
                                                  borderRadius: const BorderRadius.all(Radius.circular(68)),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                          width: 26,
                                                          height: 26,
                                                          child: Image.asset("assets/images/coin_yellow.png")),
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        totalScore.toPersianDigit(),
                                                        style: AppStyle.size11Weight500,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          if (phoneNo.isNotEmpty)
                                            Text(phoneNo.toPersianDigit(),
                                                style: AppStyle.size14Weight500.copyWith(color: colorTheme.bg)),
                                          const SizedBox(height: 6),
                                          Text("امتیاز وفاداری: $loyaltyScore".toPersianDigit(),
                                              style: AppStyle.size14Weight500.copyWith(color: colorTheme.bg))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            width: width * 0.9,
                            height: height * 0.45,
                            margin: const EdgeInsets.only(
                              top: 24,
                            ),
                            child: Column(
                              children: [
                                Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text(
                                      "main.profiles".tr(),
                                      style: AppStyle.size12Weight600grey.copyWith(fontSize: 16),
                                    )),
                                SizedBox(
                                  height: height * 0.015,
                                ),
                                SizedBox(
                                    height: width * 0.26,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: iconTitles.length,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(left: 16, right: 1, top: 8, bottom: 8),
                                            child: SizedBox(
                                              width: width * 0.22,
                                              child: ClickableCustomButton(
                                                  onTap: iconTitles[index].onTap,
                                                  pHeight: double.infinity,
                                                  color: colorTheme.onPrimary,
                                                  tooltipMessage: "",
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      iconTitles[index].icon,
                                                      Text(
                                                        iconTitles[index].title,
                                                        style: TextTypography.labelLarge,
                                                      )
                                                    ],
                                                  )),
                                            ),
                                          );
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   width: width ,
                          //   child: Divider(height: 0, color: colorTheme.borders, thickness: 1),
                          // ),
                          // SizedBox(
                          //   width: width * .9,
                          //   child: Row(
                          //     mainAxisAlignment:
                          //         MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Text('main.change_language'.tr(),
                          //           style: TextTypography
                          //               .labelLarge),
                          //       AppSwitch(
                          //         size: 0.8,
                          //         onChanged: () async {
                          //           if (ctx.locale ==
                          //               const Locale('fa')) {
                          //             await ctx.setLocale(
                          //                 const Locale('en'));
                          //           } else {
                          //             await ctx.setLocale(
                          //                 const Locale('fa'));
                          //           }
                          //           widget
                          //               .contextCallback(context);
                          //         },
                          //         value: ctx.locale ==
                          //                 const Locale('fa')
                          //             ? true
                          //             : false,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          /*

                                                    SizedBox(
                                                      width: width * .9,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('main.dark_mode'.tr(),
                                                              style: TextTypography
                                                                  .labelLarge),
                                                          ValueListenableBuilder(
                                                              valueListenable:
                                                                  box.listenable(),
                                                              builder:
                                                                  (context, box, child) {
                                                                return AppSwitch(
                                                                  size: 0.8,
                                                                  onChanged: () async {
                                                                    if (box.get(
                                                                            "theme_mode") ==
                                                                        "light") {
                                                                      changeTheme(
                                                                          context,
                                                                          DarkMyTheme(),
                                                                          MyThemeMode.dark);
                                                                      await box.put(
                                                                          "theme_mode",
                                                                          MyThemeMode
                                                                              .dark.name);
                                                                    } else {
                                                                      changeTheme(
                                                                          context,
                                                                          LightMyTheme(),
                                                                          MyThemeMode
                                                                              .light);
                                                                      await box.put(
                                                                          "theme_mode",
                                                                          MyThemeMode
                                                                              .light.name);
                                                                    }
                                                                  },
                                                                  value:
                                                                      getSwitchValue(box),
                                                                );
                                                              }),
                                                        ],
                                                      ),
                                                    ),
                                */
                          const Spacer(),
                          Skeleton.keep(
                            child: GestureDetector(
                              onTap: () async {
                                await confirmExit(context);
                              },
                              child: Container(
                                width: width * 0.9,
                                height: height * 0.1,
                                margin: EdgeInsets.only(
                                  right: width * 0.05,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: height / 21.5,
                                      width: width / 9,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colorTheme.fixedError,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset('assets/images/log_out.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width / 1.45,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "main.logout".tr(),
                                            style: AppStyle.size14Weight600
                                                .copyWith(fontSize: 13, color: colorTheme.fixedError),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: width / 15,
                                      child: IconButton(
                                          onPressed: () async {
                                            await confirmExit(context);
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward_ios,
                                            color: colorTheme.fixedError,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Future<dynamic> getStaffUsername(
      BuildContext context, Box<dynamic> box, Answers? select, double width, CustomTheme colorTheme) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return BlocBuilder<GetStaffBloc, GetStaffState>(
          bloc: _getStaffBloc,
          builder: (context, state) {
            final bool loading = state is GetStaffStateLoading;
            return CustomAlertDialog(
              title: "main.enter_personnel_info".tr(),
              backButtonPressed: () {
                visibility = false;
                select = Answers.no;
                Navigator.of(context).pop();
              },
              body: StatefulBuilder(builder: (context, setState) {
                return Padding(
                  padding: const EdgeInsetsDirectional.only(start: 14.0, end: 14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          "main.personnel_info_message".tr(),
                          style: AppStyle.size13Weight600black,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "main.yes".tr(),
                            style: AppStyle.size13Weight600black,
                          ),
                          Radio(
                            value: Answers.yes,
                            groupValue: select,
                            onChanged: (value) {
                              select = value;
                              setState(() {
                                visibility = true;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                          Text(
                            "main.no".tr(),
                            style: AppStyle.size13Weight600black,
                          ),
                          Radio(
                            value: Answers.no,
                            groupValue: select,
                            onChanged: (value) {
                              select = value;
                              setState(() {
                                visibility = false;
                              });
                            },
                          )
                        ],
                      ),
                      Visibility(
                        visible: visibility ? true : false,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Divider(
                            height: 4,
                            thickness: 1,
                            color: colorTheme.borders,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: visibility ? true : false,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 12,
                            ),
                            Text("main.enter_your_user_info".tr(), style: AppStyle.size13Weight600black),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: 70,
                              child: AppTextField(
                                controller: staffUserNameController,
                                onChanged: (value) {
                                  userName = staffUserNameController.text.toString();
                                },
                                errorMessage: "",
                                label: "strings.user_name".tr(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppButton(
                        customHeight: 40,
                        customWidth: width * 0.8,
                        title: "main.confirm".tr(),
                        onPressed: () {
                          userName = staffUserNameController.text.toString();

                          Navigator.of(context).pop();
                          if (userName.length > 3) {
                            _getStaffBloc.add(
                                GetStaffEvent.getStaffEventCalled(getStaffParam: GetStaffParam(username: userName)));
                            visibility = false;
                            select = Answers.no;
                            staffUserNameController.text = "";
                          }
                        },
                        buttonType: ButtonType.isFilled,
                        isSecondaryEnable: true,
                        buttonLoading: loading,
                        rightIcon: null,
                        leftIcon: context.locale == const Locale('fa') ? Magicon.angleLeft : Magicon.angleRight,
                      ),
                      const SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                );
              }),
            );
          },
        );
      },
    );
  }
}

class ProfileScreenRowItems extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final String description;
  final String imagePath;
  final void Function() onPressed;

  const ProfileScreenRowItems({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: height * 0.08,
        width: width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height / 21.5,
              width: width / 9,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Color.fromRGBO(9, 107, 255, 1),
                color: colorTheme.onPrimary,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(imagePath),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              width: width / 1.45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyle.size14Weight600.copyWith(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    description,
                    style: AppStyle.size12Weight300.copyWith(color: colorTheme.solid),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width / 15,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: colorTheme.fixedPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Score extends StatelessWidget {
  const Score({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.score,
    required this.imagePath,
  });

  final double height;
  final double width;
  final String title;
  final String score;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return SizedBox(
      height: height / 14,
      width: width / 1.09,
      child: Row(
        children: [
          Container(
            height: height / 21.5,
            width: width / 9,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorTheme.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppStyle.size14Weight600.copyWith(fontSize: 13),
              ),
            ],
          ),
          const Spacer(),
          Container(
            //  width: 64 + (score.length * 5),
            decoration: BoxDecoration(
                color: colorTheme.fixedWarning,
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(32))),
            child: SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    score.toPersianDigit().toPersianDigit(),
                    style: AppStyle.size13Weight600,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset('assets/images/coins_ic.png'),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}

class IconTitle {
  final String title;

  final Icon icon;

  final Function()? onTap;

  IconTitle(this.title, this.icon, this.onTap);
}

Future<dynamic> confirmExit(BuildContext context) async {
  final width = ResponsiveLayout.getDeviceType(context);
  return await showDialog(
    anchorPoint: const Offset(24, 24),
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) => AlertDialog(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      scrollable: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      contentPadding: const EdgeInsets.all(0.0),
      content: StatefulBuilder(
        builder: (context, setState) {
          return SingleChildScrollView(
            child: SizedBox(
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("آیا می خواهید از برنامه خارج شوید", style: AppStyle.size14Weight600),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: AppButton(
                            title: "انصراف",
                            customHeight: 48,
                            customWidth: width * 0.8,
                            buttonLoading: false,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            buttonType: ButtonType.isOutlined,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: AppErrorButton(
                            title: "خروج",
                            customHeight: 48,
                            customWidth: width * 0.8,
                            onPressed: () {
                              final Box box = Hive.box(Strings.appDBName);
                              box.put("expire_date_time", null);
                              box.put(Strings.authorization, null);
                              box.put(Strings.riskScore, null);
                              box.put(Strings.latestRiskInquiry, null);
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  PageTransition(child: const SsoAuthScreen(), type: PageTransitionType.leftToRight),
                                      (route) => false);
                            },
                            buttonErrorType: ButtonErrorType.isFilledError,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
