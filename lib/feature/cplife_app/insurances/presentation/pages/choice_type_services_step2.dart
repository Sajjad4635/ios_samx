import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/widgets/item_check.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/validate_loan/params/validate_loan_params.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/validate_loan/validate_loan_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/widgets/button_primary.dart';

class ChoiceTypeServicesStep2 extends StatefulWidget {
  const ChoiceTypeServicesStep2({
    super.key,
    required this.policyId,
    required this.isUnitLinked,
    required this.selectedOption,
    required this.onOptionTap,
    required this.isFormDisable,
  });

  final String policyId;
  final bool isUnitLinked;
  final int selectedOption;
  final Function(int? value) onOptionTap;
  final bool isFormDisable;

  @override
  State<ChoiceTypeServicesStep2> createState() => _ChoiceTypeServicesStep2State();
}

class _ChoiceTypeServicesStep2State extends State<ChoiceTypeServicesStep2> {
  final _formKey = GlobalKey<FormState>();
  late ValidateLoanBloc _validateLoanBloc;

  @override
  void initState() {
    _validateLoanBloc = sl<ValidateLoanBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);

    final unitLinkOptions = [
      {
        'value': 1,
        'text': 'واریز به اندوخته'.tr(),
        'onChanged': widget.onOptionTap,
        'textStyle': TextTypography.labelMedium,
        'fillColor': AppColors.primary,
      },
      {
        'value': 2,
        'text': "برداشت از اندوخته".tr(),
        'onChanged': widget.onOptionTap,
        'textStyle': TextTypography.labelMedium,
        'fillColor': AppColors.primary,
      },
      {
        'value': 3,
        'text': "بازخرید".tr(),
        'onChanged': null,
        'textStyle': TextTypography.labelMedium.copyWith(color: colorTheme.textVariant),
        'fillColor': colorTheme.solid
      },
    ];

    final insuranceOptions = [
      {
        'value': 1,
        'text': 'cplife.loan_request'.tr(),
        'onChanged': widget.onOptionTap,
        'textStyle': TextTypography.titleSmall,
        'fillColor': AppColors.primary,
      },
      {
        'value': 2,
        'text': "cplife.deposit_request".tr(),
        'onChanged': widget.onOptionTap,
        'textStyle': TextTypography.bodySmall.copyWith(color: colorTheme.textVariant),
        'fillColor': AppColors.primary,
      },
      {
        'value': 3,
        'text': "cplife.redemption_request".tr(),
        'onChanged': widget.onOptionTap,
        'textStyle': AppStyle.size12Weight600,
        'fillColor': AppColors.primary,
      },
    ];
    return BlocProvider(
      create: (context) => _validateLoanBloc,
      child: BlocListener<ValidateLoanBloc, ValidateLoanState>(
        bloc: _validateLoanBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (failure) {
              showErrorWidget(context, failure.code, failure.message!);
            },
            loadSuccess: (validateLoanResponseEntities) {},
            orElse: () {},
          );
        },
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: width * 0.9,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        child: Text(
                          'cplife.pick_request_type'.tr(),
                          style: TextTypography.titleSmall,
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'cplife.pick_request_type_desc'.tr(),
                          style: TextTypography.bodySmall.copyWith(color: colorTheme.textVariant),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      widget.isUnitLinked
                          ? Column(
                              children: [
                                ...unitLinkOptions
                                    .map((item) => ItemCheck(
                                          selectedOption: widget.selectedOption,
                                          title: item['text'] as String,
                                          style: item['textStyle'] as TextStyle,
                                          onChanged: item['onChanged'] as dynamic Function(int?)?,
                                          value: item['value'] as int,
                                          fillColor: item['fillColor'] as Color,
                                        ))
                                    .toList(),
                              ],
                            )
                          : Column(
                              children: [
                                ...insuranceOptions
                                    .map((item) => ItemCheck(
                                          selectedOption: widget.selectedOption,
                                          title: item['text'] as String,
                                          style: item['textStyle'] as TextStyle,
                                          onChanged: item['onChanged'] as dynamic Function(int?)?,
                                          value: item['value'] as int,
                                          fillColor: item['fillColor'] as Color,
                                        ))
                                    .toList(),
                              ],
                            ),
                    ],
                  ),
                  BlocBuilder<ValidateLoanBloc, ValidateLoanState>(
                    bloc: _validateLoanBloc,
                    builder: (context, state) {
                      final bool loading = state is ValidateLoanStateLoading;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ButtonPrimary(
                          title: "تائید و ادامه",
                          buttonLoading: loading,
                          customWidth: width * 0.9,
                          customHeight: 48,
                          onPressed: widget.isFormDisable
                              ? null
                              : () {
                                  if (!widget.isUnitLinked && widget.selectedOption == 1) {
                                    _validateLoanBloc.add(
                                      ValidateLoanEvent.validateLoanEventCalled(
                                        ValidateLoanParams(policyId: widget.policyId),
                                      ),
                                    );
                                  }
                                  DefaultTabController.of(context).animateTo(2);
                                },
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
