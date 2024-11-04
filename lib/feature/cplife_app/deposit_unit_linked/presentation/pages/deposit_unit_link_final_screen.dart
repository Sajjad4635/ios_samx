import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_check.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_dashed_divider.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_full_number.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_payment_detail.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_read_more.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_request_detail.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/widgets/deposit_final_step/deposit_final_top_description.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response_data/life_insurances_response_data.dart';
import 'package:flutter/material.dart';

class DepositUnitLinkFinalScreen extends StatefulWidget {
  const DepositUnitLinkFinalScreen({
    super.key,
    required this.lifeInsurancesResponseData,
    required this.depositAmount,
  });

  final LifeInsurancesResponseData lifeInsurancesResponseData;
  final double depositAmount;

  @override
  State<DepositUnitLinkFinalScreen> createState() =>
      _DepositUnitLinkFinalScreenState();
}

class _DepositUnitLinkFinalScreenState
    extends State<DepositUnitLinkFinalScreen> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: DepositFinalTopDescription()),
        SliverToBoxAdapter(
            child: DepositFinalReadMore(
          lifeInsurancesResponseData: widget.lifeInsurancesResponseData,
        )),
        SliverToBoxAdapter(
            child: DepositFinalFullNumber(
          fullBNO: widget.lifeInsurancesResponseData.fullBNO,
        )),
        SliverToBoxAdapter(
          child: DepositFinalDashedDivider(
            height: 1,
            color: colorTheme.solid,
          ),
        ),
        SliverToBoxAdapter(
            child: DepositFinalRequestDetail(
          depositAmount: widget.depositAmount,
        )),
        SliverToBoxAdapter(
            child: DepositFinalCheck(
          checked: checked,
          onChanged: (_) {
            setState(() {
              checked = !checked;
            });
          },
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: DepositFinalPaymentDetail(
            depositAmount: widget.depositAmount,
            policyID: widget.lifeInsurancesResponseData.policyId,
            checked: checked,
          ),
        )
      ],
    );
  }
}
