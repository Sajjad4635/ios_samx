import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/launch_url.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/create_deposit/param/create_deposit_param.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/blocs/create_dposit/create_deposit_bloc.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/request_success_screen.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_balance/params/wallet_balance_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_payment/params/wallet_payment_params.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_balance/wallet_balance_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_payment/wallet_payment_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';

class DepositFinalPaymentDetail extends StatefulWidget {
  const DepositFinalPaymentDetail({
    super.key,
    required this.depositAmount,
    required this.policyID,
    required this.checked,
  });

  final double depositAmount;
  final int policyID;
  final bool checked;

  @override
  State<DepositFinalPaymentDetail> createState() =>
      _DepositFinalPaymentDetailState();
}

class _DepositFinalPaymentDetailState extends State<DepositFinalPaymentDetail>
    with WidgetsBindingObserver {
  late WalletBalanceBloc walletBalanceBloc;
  late CreateDepositBloc createDepositBloc;
  late WalletPaymentBloc walletPaymentBloc;
  double walletBalance = 0;
  late String nationalCode;

  @override
  void initState() {
    Box box = Hive.box(Strings.appDBName);
    WidgetsBinding.instance.addObserver(this);
    nationalCode = box.get(Strings.nationalId);
    walletBalanceBloc = sl<WalletBalanceBloc>();
    createDepositBloc = sl<CreateDepositBloc>();
    walletPaymentBloc = sl<WalletPaymentBloc>();
    walletBalanceBloc.add(WalletBalanceEvent.walletBalanceEventCalled(
        WalletBalanceParams(nationalCode: nationalCode)));
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        walletBalanceBloc.add(WalletBalanceEvent.walletBalanceEventCalled(
            WalletBalanceParams(nationalCode: nationalCode)));
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color:
                widget.checked ? colorTheme.primary : colorTheme.solidVariant,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ]),
        height: 88,
        margin: const EdgeInsets.only(bottom: 40),
        width: width * .9,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                        color: colorTheme.primaryContainer,
                        borderRadius: BorderRadius.circular(16)),
                    width: 56,
                    child: const Center(
                        child: Icon(
                      Magicon.wallet,
                      size: 32,
                    )),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocConsumer<WalletBalanceBloc, WalletBalanceState>(
                        bloc: walletBalanceBloc,
                        listener: (context, state) {
                          state.maybeWhen(
                              loadFailure: (failure) => showErrorWidget(
                                  context, failure.code, failure.message!),
                              loadSuccess: (walletBalanceResponseEntities) {
                                setState(() {
                                  walletBalance = walletBalanceResponseEntities
                                      .walletBalanceResponseData.walletBalance;
                                });
                              },
                              orElse: () {});
                        },
                        builder: (context, state) {
                          return RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: Utils.roundFloatNumber(
                                      value: walletBalance),
                                  style: AppStyle.size16Weight500
                                      .copyWith(color: colorTheme.textInverse),
                                ),
                                TextSpan(
                                  text: 'cplife.saved_money_currency'.tr(),
                                  style: AppStyle.size12Weight400
                                      .copyWith(color: colorTheme.textInverse),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "cplife.wallet_balance".tr(),
                        style: AppStyle.size10Weight500
                            .copyWith(color: colorTheme.textInverse),
                      ),
                    ],
                  )
                ],
              ),
              BlocConsumer<CreateDepositBloc, CreateDepositState>(
                bloc: createDepositBloc,
                listener: (context, state) {
                  state.maybeWhen(
                      loadFailure: (failure) => showErrorWidget(
                          context, failure.code, failure.message!),
                      loadSuccess: (createDepositResponseEntities) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                child: RequestSuccessScreen(
                                  caption: 'cplife.deposit_success'.tr(),
                                  buttonTitle: "cplife.return_to_request".tr(),
                                  onBackButtonPressed: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        child: const DashboardScreen(),
                                        type: PageTransitionType.leftToRight,
                                      ),
                                    );
                                  },
                                  title: 'cplife.pay_to_deposit_request'.tr(),
                                ),
                                type: PageTransitionType.leftToRight),
                            (route) => false);
                      },
                      orElse: () {});
                },
                builder: (context, state) {
                  return GestureDetector(
                    onTap: !widget.checked
                        ? null
                        : () {
                            setState(() {
                              if (widget.depositAmount > walletBalance) {
                                double deferenceAmount =
                                    widget.depositAmount - walletBalance;
                                showWalletModal(
                                    context: context,
                                    walletBalance: walletBalance,
                                    deferenceAmount: deferenceAmount);
                              } else {
                                createDepositBloc = sl<CreateDepositBloc>();
                                createDepositBloc.add(
                                    CreateDepositEvent.createDepositEventCalled(
                                        CreateDepositParam(
                                            amount:
                                                widget.depositAmount.round(),
                                            id: widget.policyID)));
                              }
                            });
                          },
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                          color: widget.checked
                              ? colorTheme.primaryContainer
                              : colorTheme.solid,
                          borderRadius: BorderRadius.circular(8)),
                      width: 92,
                      child: Center(
                        child: Text(
                          "cplife.payment".tr(),
                          style: AppStyle.size14Weight500.copyWith(
                              color: widget.checked
                                  ? colorTheme.onPrimaryContainer
                                  : colorTheme.textVariant),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future showWalletModal(
      {required BuildContext context,
      required double walletBalance,
      required double deferenceAmount}) async {
    double width = ResponsiveLayout.getDeviceType(context);
    return await showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        builder: (context) {
          final colorTheme = context.colorTheme<CustomTheme>();
          return SizedBox(
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox.shrink(),
                      Text("cplife.wallet_charge_title".tr(),
                          style: TextTypography.titleMedium),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Magicon.angleDown),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                    padding:
                        const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Magicon.wallet,
                              size: 20,
                              color: colorTheme.solidVariant,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "cplife.wallet_balance_title".tr(),
                              style: TextTypography.bodySmall
                                  .copyWith(color: colorTheme.textVariant),
                            )
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: Utils.roundFloatNumber(
                                    value: walletBalance),
                                style: TextTypography.headLineSmall
                                    .copyWith(color: colorTheme.error),
                              ),
                              TextSpan(
                                text: "cplife.saved_money_currency".tr(),
                                style: TextTypography.bodySmall.copyWith(
                                  color: colorTheme.solidVariant,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding:
                        const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Magicon.moneyBill,
                              size: 20,
                              color: colorTheme.solidVariant,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "cplife.difference_amount_title".tr(),
                              style: TextTypography.bodySmall
                                  .copyWith(color: colorTheme.textVariant),
                            )
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: Utils.roundFloatNumber(
                                    value: deferenceAmount),
                                style: TextTypography.bodySmall
                                    .copyWith(color: colorTheme.success),
                              ),
                              TextSpan(
                                text: "cplife.saved_money_currency".tr(),
                                style: TextTypography.bodySmall.copyWith(
                                  color: colorTheme.solidVariant,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 32),
                BlocConsumer<WalletPaymentBloc, WalletPaymentState>(
                  bloc: walletPaymentBloc,
                  listener: (context, state) {
                    state.maybeWhen(
                        loadFailure: (failure) => showErrorWidget(
                            context, failure.code, failure.message!),
                        loadSuccess: (walletPaymentResponseEntities) {
                          launchInBrowser(walletPaymentResponseEntities
                              .walletPaymentResponseData.paymentUrl);
                        },
                        orElse: () {});
                  },
                  builder: (context, state) {
                    final loading = state is WalletPaymentStateLoading;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ButtonPrimary(
                        title: "cplife.wallet_charge_title".tr(),
                        customHeight: 48,
                        buttonLoading: loading,
                        iconWidth: 0,
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) {
                          //     return RequestSuccessScreen(
                          //       title: 'cplife.pay_to_deposit_request'.tr(),
                          //       caption: 'cplife.deposit_success'.tr(),
                          //       buttonTitle: 'cplife.return_to_request'.tr(),
                          //       onBackButtonPressed: () {},
                          //     );
                          //   },
                          // ));
                          walletPaymentBloc.add(
                            WalletPaymentEvent.walletPaymentEventCalled(
                              WalletPaymentParams(
                                transferTypeId:
                                    "aec2366b-dcc4-4aa5-994a-d45528ab38ed",
                                amount: deferenceAmount.toInt(),
                                redirectUrl: kIsWeb
                                    ? "http://localhost:2020/receipt"
                                    : "https://samx.vservices.ir",
                              ),
                            ),
                          );
                        },
                        customWidth: double.infinity,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 40)
              ],
            ),
          );
        });
  }
}
