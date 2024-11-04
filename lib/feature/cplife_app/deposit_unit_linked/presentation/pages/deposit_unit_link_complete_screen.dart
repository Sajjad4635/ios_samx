import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/param/transaction_status_param.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/blocs/transaction_status/transaction_status_bloc.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/blocs/unit_price/unit_price_bloc.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_complete_step/deposit_description.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_complete_step/deposit_form.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_complete_step/deposit_submit.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_complete_step/deposit_top_description.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_complete_step/detail_container.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/life_insurances_list_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DepositUnitLinkCompleteScreen extends StatefulWidget {
  const DepositUnitLinkCompleteScreen({
    super.key,
    required this.policyId,
    required this.depositAmountCallback,
  });

  final String policyId;
  final DepositAmountCallback depositAmountCallback;

  @override
  State<DepositUnitLinkCompleteScreen> createState() => _DepositUnitLinkCompleteScreenState();
}

class _DepositUnitLinkCompleteScreenState extends State<DepositUnitLinkCompleteScreen> {
  bool isFormDisable = true;

  late TransactionStatusBloc transactionStatusBloc;
  late UnitPriceBloc unitPriceBloc;
  TextEditingController depositController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    transactionStatusBloc = sl<TransactionStatusBloc>();
    unitPriceBloc = sl<UnitPriceBloc>();
    transactionStatusBloc
        .add(TransactionStatusEvent.transactionStatusEventCalled(TransactionStatusParam(policyId: widget.policyId)));
    unitPriceBloc.add(UnitPriceEvent.unitPriceEventCalled(NoParams()));

    depositController.addListener(() {
      if (depositController.text.isNotEmpty) {
        if (isFormDisable == false) return;
        setState(() {
          isFormDisable = false;
        });
      } else {
        if (isFormDisable == true) return;
        setState(() {
          isFormDisable = true;
        });
      }
    });

    super.initState();
  }

  String unitPrices = "cplife.unknown".tr();
  String transactionsStatus = "cplife.unknown".tr();

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);

    return MultiBlocListener(
      listeners: [
        BlocListener<TransactionStatusBloc, TransactionStatusState>(
            bloc: transactionStatusBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) => showErrorWidget(context, failure.code, failure.message!),
                loadSuccess: (transactionStatusResponseEntity) {
                  setState(() {
                    transactionsStatus =
                        transactionStatusResponseEntity.transActionsStatusData.reserved.toStringAsFixed(0).toString();
                  });
                },
                orElse: () {},
              );
            }),
        BlocListener<UnitPriceBloc, UnitPriceState>(
          bloc: unitPriceBloc,
          listener: (context, state) {
            state.maybeWhen(
              loadFailure: (failure) => showErrorWidget(context, failure.code, failure.message!),
              loadSuccess: (unitPriceResponseEntity) {
                setState(() {
                  unitPrices = unitPriceResponseEntity.unitPriceData.amount.toStringAsFixed(0).toString();
                });
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: width * .9,
            child: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                    child: DetailContainer(
                  margin: const EdgeInsets.only(bottom: 16, top: 24),
                  title: 'cplife.your_deposit'.tr(),
                  value: transactionsStatus.seRagham().toPersianDigit(),
                  largeTitle: true,
                  icon: Magicon.moneyBills,
                )),
                SliverToBoxAdapter(
                  child: DetailContainer(
                    title: 'cplife.unit_price'.tr(),
                    value: unitPrices.seRagham().toPersianDigit(),
                    icon: Magicon.moneyBillClock,
                  ),
                ),
                const SliverToBoxAdapter(child: DepositTopDescription()),
                const SliverToBoxAdapter(child: DepositDescription()),
                SliverToBoxAdapter(
                    child: Skeletonizer(
                  enabled: transactionStatusBloc.state is TransactionStatusLoading ||
                      unitPriceBloc.state is UnitPriceLoading,
                  child: DepositForm(
                    depositAmountCallback: widget.depositAmountCallback,
                    controller: depositController,
                    formkey: formKey,
                  ),
                )),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: DepositSubmit(
                    isFormDisable: isFormDisable,
                    formkey: formKey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
