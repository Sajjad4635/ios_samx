import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/feature/cplife_app/tickets/presentation/pages/tickets_insurances_screen.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/param/withdraw_unit_linked_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/blocs/create_withdraw_unit_linkes/create_withdraw_unit_linked_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

class WithdrawFinalSubmit extends StatelessWidget {
  const WithdrawFinalSubmit({
    super.key,
    required this.withdrawAmount,
    required this.policyID,
    required this.isChecked,
  });

  final String withdrawAmount;
  final int policyID;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    CreateWithdrawBloc createWithdrawBloc = sl<CreateWithdrawBloc>();
    double width = ResponsiveLayout.getDeviceType(context);
    return BlocConsumer<CreateWithdrawBloc, CreateWithdrawState>(
      bloc: createWithdrawBloc,
      listener: (context, state) {
        state.maybeWhen(
          loadFailure: (failure) =>
              showErrorWidget(context, failure.code, failure.message!),
          loadSuccess: (createWithdrawUnitLinkedEntities) {
            Navigator.pushAndRemoveUntil(
                context,
                PageTransition(
                    child: const TicketsInsurancesScreen(),
                    type: PageTransitionType.leftToRight),
                (route) => false);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final bool loading = state is CreateWithdrawStateLoading;
        return Container(
          margin: const EdgeInsets.only(bottom: 40),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ButtonPrimary(
              title: "cplife.final_request".tr(),
              buttonLoading: loading,
              customWidth: width * 0.9,
              customHeight: 48,
              onPressed: !isChecked
                  ? null
                  : () {
                      final latestAmount = double.parse(
                              Utils.removeThousandSeparators(withdrawAmount))
                          .toStringAsFixed(0);

                      createWithdrawBloc.add(
                        CreateWithdrawEvent.createWithdrawEventCalled(
                          CreateWithdrawUnitLinkedParam(
                            amount: int.parse(latestAmount),
                            id: policyID,
                            // percent: int.parse(latestAmountPercent),
                            iban: '',
                            owner: '',
                          ),
                        ),
                      );
                    },
            ),
          ),
        );
      },
    );
  }
}
