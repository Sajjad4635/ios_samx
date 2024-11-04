import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_response_data/user_card/user_card.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/account_default/account_default_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/account_enable/account_enable_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/get_card/get_card_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/post_account/post_account_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/pages/add_card_screen.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/pages/profile_finance_iban_screen.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/widgets/cards_widget.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/widgets/ibans_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/base_widget/app_fab/app_fab.dart';
import '../../../../../core/base_widget/app_snack_bar/app_snack_bar.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../injection_container.dart';
import '../../domain/entities/get_account/get_account_response_data/get_account_response_data.dart';
import '../bloc/get_account/get_account_bloc.dart';

class ProfileFinanceScreen extends StatefulWidget {
  final int initialTabbarIndex;

  const ProfileFinanceScreen({super.key, this.initialTabbarIndex = 0});

  @override
  State<ProfileFinanceScreen> createState() => _ProfileFinanceScreenState();
}

class _ProfileFinanceScreenState extends State<ProfileFinanceScreen>
    with SingleTickerProviderStateMixin {
  late GetAccountBloc _getAccountBloc;
  late AccountEnableBloc _accountEnableBloc;
  late PostAccountBloc _postAccountBloc;
  late AccountDefaultBloc _accountDefaultBloc;
  late GetCardBloc _getCardBloc;
  List<GetAccountResponseData> getAccountResponseData = [];
  List<UserCards> getCardResponseData = [];
  bool loading = false;
  String cardIcon = "";
  late TabController _tabController;

  @override
  void initState() {
    _getAccountBloc = sl<GetAccountBloc>();
    _accountEnableBloc = sl<AccountEnableBloc>();
    _postAccountBloc = sl<PostAccountBloc>();
    _accountDefaultBloc = sl<AccountDefaultBloc>();
    _getCardBloc = sl<GetCardBloc>();
    _getAccountBloc
        .add(GetAccountEvent.getAccountEventCalled(noParams: NoParams()));
    _getCardBloc.add(GetCardEvent.getCardEventCalled(noParams: NoParams()));

    super.initState();
    _tabController = TabController(
        vsync: this, length: 2, initialIndex: widget.initialTabbarIndex);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    TabBar tabBar = TabBar(
      indicatorColor: colorTheme.primary,
      controller: _tabController,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: colorTheme.bgInverse,
      unselectedLabelColor: colorTheme.textVariant,
      labelStyle: TextTypography.labelLarge,
      tabs: [
        Tab(
          text: 'main.deposits'.tr(),
        ),
        Tab(
          text: 'main.cards'.tr(),
        ),
      ],
    );
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colorTheme.bg,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(114.0),
            child: AppTopAppBar(
              title: 'main.financial_profile'.tr(),
              isQrCode: false,
              onPressed: () {
                Navigator.pop(context);
              },
              bottom: PreferredSize(
                preferredSize: tabBar.preferredSize,
                child: Material(
                  color: colorTheme.white,
                  child: Theme(
                      data: ThemeData().copyWith(splashColor: colorTheme.white),
                      child: tabBar),
                ),
              ),
            ),
          ),
          body: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => _getAccountBloc,
              ),
              BlocProvider(
                create: (context) => _accountEnableBloc,
              ),
              BlocProvider(
                create: (context) => _getCardBloc,
              )
            ],
            child: MultiBlocListener(
              listeners: [
                BlocListener<AccountDefaultBloc, AccountDefaultState>(
                  bloc: _accountDefaultBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (error) {
                        showErrorWidget(context, error.code!, error.message!);
                      },
                      loadSuccess: (accountDefaultEntities) {
                        setState(() {
                          _getAccountBloc.add(
                              GetAccountEvent.getAccountEventCalled(
                                  noParams: NoParams()));
                        });
                      },
                      orElse: () {},
                    );
                  },
                ),
                BlocListener<GetAccountBloc, GetAccountState>(
                  bloc: _getAccountBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (error) {
                        showErrorWidget(context, error.code!, error.message!);
                      },
                      loadSuccess: (getAccountEntities) {
                        setState(() {
                          getAccountResponseData =
                              getAccountEntities.getAccountResponseData;
                        });
                      },
                      orElse: () {},
                    );
                  },
                ),
                BlocListener<PostAccountBloc, PostAccountState>(
                  bloc: _postAccountBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (error) {},
                      loadSuccess: (postAccountEntities) {
                        //todo check snack bar
                        // AppSnackBar.showSnackBar(
                        //     context: context,
                        //     title: 'main.confirm'.tr(),
                        //     message: );
                      },
                      orElse: () {},
                    );
                  },
                ),
                BlocListener<AccountEnableBloc, AccountEnableState>(
                    bloc: _accountEnableBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        loadFailure: (error) {
                          showErrorWidget(context, error.code!, error.message!);
                        },
                        loadSuccess: (accountEnableEntities) {
                          AppSnackBar.showSnackBar(
                            context: context,
                            title: 'main.confirm'.tr(),
                            message: 'main.update_success'.tr(),
                          );

                          setState(() {
                            _getAccountBloc.add(
                                GetAccountEvent.getAccountEventCalled(
                                    noParams: NoParams()));
                          });
                        },
                        orElse: () {},
                      );
                    }),
                BlocListener<GetCardBloc, GetCardState>(
                  bloc: _getCardBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                      loadFailure: (error) {
                        showErrorWidget(context, error.code!, error.message!);
                      },
                      loadSuccess: (getCardEntities) {
                        setState(() {
                          getCardResponseData =
                              getCardEntities.getCardResponseData.userCards;
                        });
                      },
                      orElse: () {},
                    );
                  },
                ),
              ],
              child: TabBarView(
                controller: _tabController,
                children: [
                  IbansWidget(
                    accountDefaultBloc: _accountDefaultBloc,
                    accountEnableBloc: _accountEnableBloc,
                    getAccountBloc: _getAccountBloc,
                    getAccountResponseData: getAccountResponseData,
                  ),
                  CardsWidget(
                    getCardResponseData: getCardResponseData,
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: AppFab(
            isTitle: true,
            isPrimary: true,
            title: _tabController.index == 0
                ? "main.add_iban".tr()
                : "main.new_card".tr(),
            icon: Magicon.creditCardPlus,
            customWidth: width * 0.45,
            customHeight: height * 0.07,
            onPressed: () {
              if (_tabController.index == 0) {
                getAccountResponseData.length == 5
                    ? AppSnackBar.showSnackBar(
                        type: SnackBarType.warning,
                        context: context,
                        title: 'main.confirm'.tr(),
                        message:
                            'main.limitation_iban_number'.tr().toPersianDigit())
                    : Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const ProfileFinanceIbanScreen(),
                          type: PageTransitionType.leftToRight,
                        ),
                      );
              } else {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    child: const AddCardScreen(
                      isEditing: false,
                    ),
                    type: PageTransitionType.leftToRight,
                  ),
                );
              }
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ),
      ),
    );
  }
}
