import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/utils/route_observer.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/bloc/get_profile/get_profile_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_transaction/entity/wallet_transaction_response_data.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_code/params/wallet_code_param.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_code/wallet_code_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/wallet_deposit/deposit_screen.dart';

import 'package:ios_samx/feature/main_app/wallet/presentation/pages/wallet_to_wallet/wallet_to_wallet_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/with_draw/withdraw_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/wallet_transaction_item.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/wallet_transactions_list_loading.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../injection_container.dart';
import '../../../finance_profile/domain/entities/get_account/get_account_response_data/get_account_response_data.dart';
import '../../../finance_profile/presentaion/bloc/get_account/get_account_bloc.dart';
import '../../../finance_profile/presentaion/pages/profile_finance_iban_screen.dart';
import '../../domain/usecases/wallet_balance/params/wallet_balance_params.dart';
import '../../domain/usecases/wallet_transaction/params/wallet_transaction_params.dart';
import '../bloc/wallet_balance/wallet_balance_bloc.dart';
import '../bloc/wallet_transaction/wallet_transaction_bloc.dart';

import '../widget/wallet_dotted_container_widget.dart';
import '../widget/wallet_item_widget.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> with RouteAware {
  late WalletBalanceBloc _walletBalanceBloc;
  late WalletTransactionBloc _walletTransactionBloc;
  late GetProfileBloc _getProfileBloc;
  late WalletCodeBloc _walletCodeBloc;
  late GetAccountBloc _getAccountBloc;

  late double walletBalance = 0;
  String walletSegmentId = "";

  String defaultIban = "";
  Box box = Hive.box(Strings.appDBName);

  List<WalletTransactionResponseData> walletTransactionResponseData = [];

  String nationalCode = "";
  String phoneNo = "";

  @override
  void initState() {
    _getAccountBloc = sl<GetAccountBloc>();
    _walletBalanceBloc = sl<WalletBalanceBloc>();
    _walletTransactionBloc = sl<WalletTransactionBloc>();
    _getProfileBloc = sl<GetProfileBloc>();
    _walletCodeBloc = sl<WalletCodeBloc>();
    _getProfileBloc.add(GetProfileEvent.getProfileEventCalled(noParams: NoParams()));
    _getAccountBloc.add(GetAccountEvent.getAccountEventCalled(noParams: NoParams()));

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPopNext() {
    _walletBalanceBloc
        .add(WalletBalanceEvent.walletBalanceEventCalled(WalletBalanceParams(nationalCode: nationalCode)));

    _walletTransactionBloc
        .add(WalletTransactionEvent.walletTransactionEventCalled(WalletTransactionParams(nationalCode: nationalCode)));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _walletBalanceBloc,
        ),
        BlocProvider(
          create: (context) => _walletTransactionBloc,
        ),
        BlocProvider(
          create: (context) => _getProfileBloc,
        ),
        BlocProvider(
          create: (context) => _walletCodeBloc,
        ),
        BlocProvider(create: (context) => _getAccountBloc)
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
                  loadSuccess: (getProfileEntities) {
                    box.put(Strings.nationalId, getProfileEntities.getProfileResponseData.nationalCode!);
                    box.put(Strings.phoneId, getProfileEntities.getProfileResponseData.phoneNumber!);
                    box.put(Strings.gender, getProfileEntities.getProfileResponseData.gender!);
                    setState(() {
                      nationalCode = getProfileEntities.getProfileResponseData.nationalCode!;
                      phoneNo = getProfileEntities.getProfileResponseData.phoneNumber!;
                    });
                    _walletBalanceBloc = sl<WalletBalanceBloc>();
                    _walletBalanceBloc.add(
                        WalletBalanceEvent.walletBalanceEventCalled(WalletBalanceParams(nationalCode: nationalCode)));
                    _walletCodeBloc = sl<WalletCodeBloc>();

                    _walletCodeBloc
                        .add(WalletCodeEvent.walletCodeEventCalled(WalletCodeParams(nationalID: nationalCode)));
                  },
                  orElse: () {},
                );
              }),
          BlocListener<WalletCodeBloc, WalletCodeState>(
              bloc: _walletCodeBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (failure) {
                    showErrorWidget(context, failure.code, failure.message!);
                  },
                  loadSuccess: (response) {
                    box.put(Strings.walletSegmentId, response.walletCodeResponseData.segmentId);
                    setState(() {
                      walletSegmentId = response.walletCodeResponseData.segmentId;
                    });
                  },
                  orElse: () {},
                );
              })
        ],
        child: PopScope(
          onPopInvoked: (didPop) {
            Navigator.of(context).pushAndRemoveUntil(
                PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight), (route) => false);
          },
          canPop: true,
          child: Scaffold(
            backgroundColor: AppColors.darkGray,
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
                  Navigator.of(context).pushAndRemoveUntil(
                      PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                      (route) => false);
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
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: height * 0.35,
                        color: AppColors.darkGray,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: height * 0.15,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/Frame_a.png"),
                                )),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SimpleRoundedContainer(
                                width: width * 0.9,
                                height: height * 0.30,
                                bgColor: AppColors.lightBlack,
                                borderRadius: width * 0.02,
                                borderColor: Colors.transparent,
                                widget: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Spacer(),
                                    Text(
                                      'main.wallet_balance'.tr(),
                                      style: AppStyle.size15Weight400LightWhite,
                                    ),
                                    BlocConsumer<WalletBalanceBloc, WalletBalanceState>(
                                      bloc: _walletBalanceBloc,
                                      listener: (context, state) {
                                        state.maybeWhen(
                                          loadFailure: (failure) {
                                            showErrorWidget(context, failure.code, failure.message!);
                                          },
                                          loadSuccess: (walletBalanceResponseEntities) {
                                            setState(() {
                                              walletBalance =
                                                  walletBalanceResponseEntities.walletBalanceResponseData.walletBalance;
                                              _walletTransactionBloc.add(
                                                  WalletTransactionEvent.walletTransactionEventCalled(
                                                      WalletTransactionParams(nationalCode: nationalCode)));

                                              box.put(Strings.walletBalance, walletBalance.toInt().toString());
                                            });
                                          },
                                          orElse: () {},
                                        );
                                      },
                                      builder: (context, state) {
                                        final loading = state is WalletBalanceStateLoading;
                                        return Skeletonizer(
                                          enabled: loading,
                                          child: Text(
                                              // ignore: unnecessary_null_comparison
                                              walletBalance != null
                                                  ? "${walletBalance.toInt().toString().seRagham().toPersianDigit()} ریال"
                                                  : "",
                                              style: AppStyle.size20wWeight700),
                                        );
                                      },
                                    ),
                                    const Spacer(),
                                    SimpleRoundedContainer(
                                      width: width * 0.8,
                                      height: height * 0.10,
                                      bgColor: AppColors.costColor,
                                      borderRadius: width * 0.02,
                                      borderColor: Colors.transparent,
                                      widget: SizedBox(
                                        width: width * 1,
                                        height: height * 0.2,
                                        child: GestureDetector(
                                          onTap: () {
                                            if (defaultIban.length < 25) {
                                              Navigator.push(
                                                context,
                                                PageTransition(
                                                    child: (const ProfileFinanceIbanScreen()),
                                                    type: PageTransitionType.leftToRight),
                                              );
                                            }

                                            // Navigator.push(
                                            //   context,
                                            //   PageTransition(
                                            //       child: (const IbanScreen()),
                                            //       type: PageTransitionType.leftToRight),
                                            // );
                                          },
                                          child: BlocConsumer<GetAccountBloc, GetAccountState>(
                                            bloc: _getAccountBloc,
                                            listener: (BuildContext context, GetAccountState state) {
                                              state.maybeWhen(
                                                orElse: () {
                                                  return null;
                                                },
                                                loadFailure: (failure) {
                                                  showErrorWidget(context, failure.code, failure.message!);
                                                },
                                                loadSuccess: (getAccountEntities) {
                                                  setState(() {
                                                    final iBanList = getAccountEntities.getAccountResponseData;
                                                    if (iBanList.isEmpty) {
                                                      defaultIban = "";
                                                    } else {
                                                      for (GetAccountResponseData data in iBanList) {
                                                        if (data.isDefault) {
                                                          defaultIban = data.iban;
                                                          box.put("defaultIban", defaultIban);
                                                          break;
                                                        }
                                                      }
                                                    }
                                                  });
                                                },
                                              );
                                            },
                                            builder: (context, state) {
                                              return Skeletonizer(
                                                enabled: state is GetAccountStateLoading,
                                                child: WalletDottedContainerWidget(
                                                  iconImage: defaultIban.length > 23
                                                      ? Container(
                                                          height: 35,
                                                          width: 35,
                                                          padding: const EdgeInsets.all(6),
                                                          decoration: const BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(
                                                                  100,
                                                                ),
                                                              )),
                                                          child: Image(
                                                            width: 32,
                                                            image: AssetImage(
                                                              "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(defaultIban.substring(4, 7))}.png",
                                                            ),
                                                          ),
                                                        )
                                                      : const Image(
                                                          width: 20,
                                                          height: 20,
                                                          image: AssetImage(
                                                            'assets/images/credit.png',
                                                          ),
                                                        ),
                                                  width: width * 1,
                                                  caption: defaultIban.length > 23
                                                      ? defaultIban
                                                      : 'main.register_your_iban'.tr(),
                                                  height: height * 0.5,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),

                                      ///wallet data is above
                                      // const Padding(
                                      //   padding: EdgeInsets.all(8.0),
                                      //   child: WalletDataWidget(title: 'IR - 54 0560 6118 2800 5108 2463 01' , titleStyle:  AppStyle.size12Weight700, subTitle: '', caption: 'شماره شبا:', captionStyle: AppStyle.size12Weight400White,   assetName: "assets/images/blu.png",),
                                      // )
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WalletItemWidget(
                          width: width * 0.25,
                          height: height * 0.11,
                          title: "main.deposit".tr(),
                          style: AppStyle.size13Weight600White,
                          path: 'assets/images/wallet.png',
                          bgColor: AppColors.costColor,
                          onTap: () {
                            if (walletSegmentId.isNotEmpty) {
                              Navigator.push(
                                context,
                                PageTransition(child: (const DepositScreen()), type: PageTransitionType.leftToRight),
                              );
                            }
                          },
                        ),
                        WalletItemWidget(
                          width: width * 0.25,
                          height: height * 0.11,
                          title: "main.wallet_to_wallet".tr(),
                          style: AppStyle.size13Weight600White,
                          path: 'assets/images/wallet.png',
                          bgColor: AppColors.costColor,
                          onTap: () {
                            if (walletSegmentId.isNotEmpty) {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: WalletToWalletScreen(
                                    walletSegmentId: walletSegmentId,
                                  ),
                                  type: PageTransitionType.leftToRight,
                                ),
                              );
                            }
                          },
                        ),
                        WalletItemWidget(
                          width: width * 0.25,
                          height: height * 0.11,
                          title: "main.withdraw".tr(),
                          style: AppStyle.size13Weight600White,
                          path: 'assets/images/wallet.png',
                          bgColor: AppColors.costColor,
                          onTap: () {
                            if (walletSegmentId.isNotEmpty) {
                              if (defaultIban.length < 24) {
                                showErrorWidget(context, 101, "main.insert_your_iban".tr());
                              } else {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: WithDrawScreen(
                                          activeIban: defaultIban,
                                        ),
                                        type: PageTransitionType.leftToRight));
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  BlocConsumer<WalletTransactionBloc, WalletTransactionState>(
                    bloc: _walletTransactionBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        loadFailure: (failure) {
                          showErrorWidget(context, failure.code, failure.message!);
                        },
                        loadSuccess: (walletTransactionEntities) {
                          setState(() {
                            walletTransactionResponseData = walletTransactionEntities.walletTransactionResponseData;
                          });
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      final loading = state is WalletTransactionStateLoading;
                      return loading
                          ? const WalletTransactionListLoading()
                          : walletTransactionResponseData.isNotEmpty
                              ? Container(
                                  width: width,
                                  height: height / 2.5,
                                  color: AppColors.lightWhite,
                                  child: ListView.builder(
                                    itemCount: walletTransactionResponseData.length,
                                    itemBuilder: (context, index) => WalletTransactionItem(
                                      walletTransactionResponseData: walletTransactionResponseData[index],
                                    ),
                                  ),
                                )
                              : Container(
                                  width: width,
                                  height: height / 2,
                                  color: AppColors.lightWhite,
                                  child: Center(
                                    child: Text(
                                      'main.no_transaction_registered'.tr(),
                                      style: AppStyle.size12Weight600,
                                    ),
                                  ),
                                );
                    },
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
