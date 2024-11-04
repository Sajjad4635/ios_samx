import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_dashed_divider.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response_data/life_insurances_response_data.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_final_step/withdraw_final_check.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_final_step/withdraw_final_full_number.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_final_step/withdraw_final_read_more.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_final_step/withdraw_final_request_detail.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_final_step/withdraw_final_submit.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/widgets/withdraw_final_step/withdraw_final_top_description.dart';
import 'package:flutter/material.dart';

class WithdrawUnitLinkFinalScreen extends StatefulWidget {
  const WithdrawUnitLinkFinalScreen({
    super.key,
    required this.lifeInsurancesResponseData,
    required this.withdrawAmount,
  });

  final LifeInsurancesResponseData lifeInsurancesResponseData;
  final String withdrawAmount;

  @override
  State<WithdrawUnitLinkFinalScreen> createState() =>
      _WithdrawUnitLinkFinalScreenState();
}

class _WithdrawUnitLinkFinalScreenState
    extends State<WithdrawUnitLinkFinalScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: WithdrawFinalTopDescription()),
            SliverToBoxAdapter(
                child: WithdrawFinalReadMore(
              lifeInsurancesResponseData: widget.lifeInsurancesResponseData,
            )),
            SliverToBoxAdapter(
                child: WithdrawFinalFullNumber(
              fullBNO: widget.lifeInsurancesResponseData.fullBNO.toString(),
            )),
            SliverToBoxAdapter(
              child: DepositFinalDashedDivider(
                height: 1,
                color: colorTheme.solid,
              ),
            ),
            SliverToBoxAdapter(
                child: WithdrawFinalRequestDetail(
              withdrawAmount: widget.withdrawAmount,
            )),
            SliverToBoxAdapter(
                child: WithdrawFinalCheck(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = !isChecked;
                });
              },
            )),
            SliverFillRemaining(
                hasScrollBody: false,
                child: WithdrawFinalSubmit(
                  withdrawAmount: widget.withdrawAmount,
                  policyID: widget.lifeInsurancesResponseData.policyId,
                  isChecked: isChecked,
                )),
          ],
        ),
      ),
    );
  }
}
