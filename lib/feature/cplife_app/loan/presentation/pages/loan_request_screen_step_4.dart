import 'package:ios_samx/core/extensions/parse_double_extension.dart';
import 'package:ios_samx/core/extensions/parse_int_extension.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/register_loan/param/register_loan_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/register_loan/register_loan_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/widgets/button_primary.dart';
import '../../../../../core/widgets/text_form_field.dart';
import 'loan_request_screen_result.dart';

class LoanRequestScreenStep4 extends StatefulWidget {
  final String fullPolicyNo;
  final String policyId;
  final String issuerCode;
  final String beginDate;
  final String endDate;
  final String savedMoney;
  final String amountLoanRequest;
  final String percentLoanRequest;
  final String ibanNumber;
  final String ownerIbanName;
  final String paybackNumber;
  final String insuranceYear;

  const LoanRequestScreenStep4({
    super.key,
    required this.fullPolicyNo,
    required this.policyId,
    required this.issuerCode,
    required this.beginDate,
    required this.endDate,
    required this.savedMoney,
    required this.amountLoanRequest,
    required this.percentLoanRequest,
    required this.ibanNumber,
    required this.ownerIbanName,
    required this.paybackNumber,
    required this.insuranceYear,
  });

  @override
  State<LoanRequestScreenStep4> createState() => _LoanRequestScreenStep4State();
}

class _LoanRequestScreenStep4State extends State<LoanRequestScreenStep4> {
  TextEditingController fullPolicyNoController = TextEditingController();
  TextEditingController policyIdController = TextEditingController();
  TextEditingController issuerCodeController = TextEditingController();
  TextEditingController beginDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController savedMoneyController = TextEditingController();
  TextEditingController amountLoanRequestController = TextEditingController();
  TextEditingController percentLoanRequestController = TextEditingController();
  TextEditingController ibanNumberController = TextEditingController();
  TextEditingController ownerIbanNameController = TextEditingController();
  TextEditingController insuranceYearController = TextEditingController();

  late RegisterLoanBloc _registerLoanBloc;

  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  int selectedOption = 0;

  @override
  void initState() {
    fullPolicyNoController.text = widget.fullPolicyNo;
    policyIdController.text = widget.policyId;
    issuerCodeController.text = widget.issuerCode;
    beginDateController.text = widget.beginDate;
    endDateController.text = widget.endDate;
    insuranceYearController.text = widget.insuranceYear;
    amountLoanRequestController.text = widget.amountLoanRequest;
    percentLoanRequestController.text = widget.percentLoanRequest;
    ibanNumberController.text = widget.ibanNumber;
    ownerIbanNameController.text = widget.ownerIbanName;

    _registerLoanBloc = sl<RegisterLoanBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => _registerLoanBloc,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: width * 0.9,
              height: height * 2.3,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      width: width * 0.9,
                      alignment: Alignment.topRight,
                      child: Text(
                        'cplife.final_request_registration'.tr(),
                        style: AppStyle.size13Weight600,
                      ),
                    ),
                    Container(
                      width: width * 0.9,
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'cplife.review_info_register_request'.tr(),
                        style: AppStyle.size12Weight400Black,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      width: width * 0.9,
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'cplife.insurance_information'.tr(),
                        style: AppStyle.size13Weight600.copyWith(color: AppColors.costColor),
                      ),
                    ),
                    Text(
                      '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                      style: AppStyle.size13Weight600.copyWith(color: AppColors.outlineBright),
                    ),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: fullPolicyNoController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.policy'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: policyIdController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.policy_code'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: issuerCodeController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.issuer_code'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: beginDateController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.policy_start_date'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: endDateController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.policy_expire_date'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: insuranceYearController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.insurance_year'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    Container(
                      width: width * 0.9,
                      alignment: Alignment.topRight,
                      child: Text(
                        'cplife.request_information'.tr(),
                        style: AppStyle.size13Weight600.copyWith(color: AppColors.costColor),
                      ),
                    ),
                    Text(
                      '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                      style: AppStyle.size13Weight600.copyWith(color: AppColors.outlineBright),
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        Text('cplife.saved_money'.tr(),
                            style: AppStyle.size12Weight400.copyWith(color: AppColors.black)),
                        const Spacer(),
                        Text(widget.savedMoney.toString().seRagham().toPersianDigit(),
                            style: AppStyle.size20Weight700.copyWith(color: AppColors.black)),
                        Text(
                          'cplife.saved_money_currency'.tr(),
                          style: AppStyle.size12Weight400.copyWith(color: AppColors.costColor),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: amountLoanRequestController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.loan_amount_title'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: percentLoanRequestController,
                      errorMessage: '%',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.loan_percentage_title'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: ibanNumberController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.iban_number'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    CustomTextFormField(
                      fillColor: AppColors.outlineBright,
                      controller: ownerIbanNameController,
                      errorMessage: '',
                      customWidth: width * 0.9,
                      keyboardType: TextInputType.number,
                      title: 'cplife.account_owner_name'.tr(),
                      enable: false,
                    ),
                    SizedBox(height: height * 0.03),
                    Container(
                      width: width * 0.9,
                      alignment: Alignment.topRight,
                      child: Text(
                        'cplife.repayment_method'.tr(),
                        style: AppStyle.size13Weight600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<int>(
                          value: 1,
                          groupValue: 1,
                          fillColor: MaterialStateProperty.all(AppColors.gray50),
                          splashRadius: 20,
                          onChanged: (int? value) {},
                        ),
                        Text(
                          widget.paybackNumber,
                          style: AppStyle.size12Weight600,
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.3,
                          child: Checkbox(
                            checkColor: AppColors.primary,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            side: const BorderSide(
                              color: AppColors.primary,
                            ),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: width * 0.7,
                          child: Text(
                            'cplife.confirm_request_text'.tr(),
                            maxLines: 2,
                            style: AppStyle.size12Weight400.copyWith(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    BlocConsumer<RegisterLoanBloc, RegisterLoanState>(
                      bloc: _registerLoanBloc,
                      listener: (context, state) {
                        state.maybeWhen(
                            loadFailure: (failure) {
                              showErrorWidget(context, failure.code, failure.message!);
                            },
                            loadSuccess: (registerLoanResponseEntities) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                    child: LoanRequestResultScreen(
                                      message: registerLoanResponseEntities.registerLoanResponseData.message,
                                    ),
                                    type: PageTransitionType.bottomToTop),
                                (route) => false,
                              );
                            },
                            orElse: () {});
                      },
                      builder: (context, state) {
                        final bool loading = state is RegisterLoanStateLoading;
                        return ButtonPrimary(
                          title: "cplife.register_request".tr(),
                          buttonLoading: loading,
                          customWidth: width * 0.9,
                          customHeight: 48,
                          onPressed: () {
                            if (isChecked) {
                              _registerLoanBloc.add(
                                RegisterLoanEvent.registerLoanEventCalled(
                                  RegisterLoanParam(
                                      amount: widget.amountLoanRequest.replaceAll(",", "").parseDouble(),
                                      policyId: widget.policyId.parseInt(),
                                      iban: widget.ibanNumber,
                                      paybackNumber:
                                          widget.paybackNumber == "cplife.two_six_month_installments".tr() ? 2 : 4),
                                ),
                              );
                            }
                          },
                        );
                      },
                    ),
                    SizedBox(height: height * 0.03),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.white;
  }
}
