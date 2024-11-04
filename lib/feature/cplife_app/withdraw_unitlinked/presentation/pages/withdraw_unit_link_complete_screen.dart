import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/param/transaction_status_param.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/blocs/transaction_status/transaction_status_bloc.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/blocs/unit_price/unit_price_bloc.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_complete_step/detail_container.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_complete_step/withdraw_convert.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_complete_step/withdraw_description.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_complete_step/withdraw_submit.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_complete_step/withdraw_top_description.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WithdrawUnitLinkCompleteScreen extends StatefulWidget {
  const WithdrawUnitLinkCompleteScreen({
    super.key,
    required this.policyId,
    required this.controller,
    required this.percentController,
  });

  final String policyId;
  final TextEditingController controller;
  final TextEditingController percentController;

  @override
  State<WithdrawUnitLinkCompleteScreen> createState() => _WithdrawUnitLinkCompleteScreenState();
}

class _WithdrawUnitLinkCompleteScreenState extends State<WithdrawUnitLinkCompleteScreen> {
  late TransactionStatusBloc transactionStatusBloc;
  late UnitPriceBloc unitPriceBloc;

  @override
  void initState() {
    transactionStatusBloc = sl<TransactionStatusBloc>();
    unitPriceBloc = sl<UnitPriceBloc>();
    transactionStatusBloc
        .add(TransactionStatusEvent.transactionStatusEventCalled(TransactionStatusParam(policyId: widget.policyId)));
    unitPriceBloc.add(UnitPriceEvent.unitPriceEventCalled(NoParams()));
    super.initState();
  }

  String unitPrices = "cplife.unknown".tr();
  String transactionsStatus = "cplife.unknown".tr();

  final _formKey = GlobalKey<FormState>();

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
                    transactionsStatus = Utils.roundFloatNumber(
                        value: transactionStatusResponseEntity.transActionsStatusData.reserved, toPersianDigit: false);
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
                  unitPrices = Utils.roundFloatNumber(
                      value: unitPriceResponseEntity.unitPriceData.amount, toPersianDigit: false);
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
            child: Form(
              key: _formKey,
              child: CustomScrollView(
                physics: const ClampingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: DetailContainer(
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      largeTitle: true,
                      title: 'cplife.your_deposit'.tr(),
                      value: transactionsStatus.toPersianDigit(),
                      icon: Magicon.moneyBills,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: DetailContainer(
                      title: 'cplife.unit_price'.tr(),
                      value: unitPrices.toPersianDigit(),
                      icon: Magicon.moneyBillClock,
                    ),
                  ),
                  const SliverToBoxAdapter(child: WithdrawTopDescription()),
                  const SliverToBoxAdapter(child: WithdrawDescription()),
                  SliverToBoxAdapter(
                      child: Skeletonizer(
                    enabled: transactionStatusBloc.state is TransactionStatusLoading ||
                        unitPriceBloc.state is UnitPriceLoading,
                    child: WithdrawConvert(
                      controller: widget.controller,
                      transactionStatus: transactionsStatus,
                      percentController: widget.percentController,
                    ),
                  )),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: WithdrawSubmit(
                      isActive: widget.controller.text.isNotEmpty,
                      formKey: _formKey,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
