import 'package:ios_samx/core/extensions/parse_double_extension.dart';
import 'package:ios_samx/core/extensions/parse_int_extension.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/life_insurances_list_screen.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/iban_inquiry/params/iban_inquiry_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/saved_money/params/saved_money_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/iban_inquiry/iban_inquiry_bloc.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/saved_money/saved_money_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/widgets/button_primary.dart';
import '../../../../../core/widgets/button_secondary.dart';
import '../../../../../core/widgets/text_form_field.dart';

enum PayType { two, four }

class LoanRequestScreenStep3 extends StatefulWidget {
  final String policyId;
  final LoanRequestStep3Callback loanRequestStep3Callback;

  const LoanRequestScreenStep3({super.key, required this.policyId, required this.loanRequestStep3Callback});

  @override
  State<LoanRequestScreenStep3> createState() => _LoanRequestScreenStep3State();
}

class _LoanRequestScreenStep3State extends State<LoanRequestScreenStep3> {
  TextEditingController priceCnt = TextEditingController();
  TextEditingController percentCnt = TextEditingController();
  TextEditingController ibanController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late SavedMoneyBloc _savedMoneyBloc;
  late IbanInquiryBloc _ibanInquiryBloc;

  List<String> ownerIbanName = [];
  String ibanNumber = "";
  String statusIban = "";

  int selectedOption = 0;
  double savedMoney = 0;

  @override
  void initState() {
    _savedMoneyBloc = sl<SavedMoneyBloc>();
    _ibanInquiryBloc = sl<IbanInquiryBloc>();
    _savedMoneyBloc.add(
      SavedMoneyEvent.saveMoneyEventCalled(
        SavedMoneyParam(policyId: widget.policyId),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _savedMoneyBloc,
        ),
        BlocProvider(
          create: (context) => _ibanInquiryBloc,
        ),
      ],
      child: BlocListener<SavedMoneyBloc, SavedMoneyState>(
        bloc: _savedMoneyBloc,
        listener: (context, state) {
          state.maybeWhen(
              loadFailure: (failure) {
                showErrorWidget(context, failure.code, failure.message!);
              },
              loadSuccess: (savedMoneyResponseEntities) {
                setState(() {
                  savedMoney = savedMoneyResponseEntities.savedMoneyResponseData.savedMoney;
                });
              },
              orElse: () {});
        },
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: width * 0.9,
                height: height * 1.4,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          Text('cplife.saved_money_title'.tr(),
                              style: AppStyle.size12Weight400.copyWith(color: AppColors.black)),
                          const Spacer(),
                          BlocBuilder<SavedMoneyBloc, SavedMoneyState>(
                            bloc: _savedMoneyBloc,
                            builder: (context, state) {
                              return Text(savedMoney.toStringAsFixed(0).seRagham().toPersianDigit(),
                                  style: AppStyle.size20Weight700.copyWith(color: AppColors.black));
                            },
                          ),
                          Text(
                            'cplife.saved_money_currency'.tr(),
                            style: AppStyle.size12Weight400.copyWith(color: AppColors.costColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        child: Text(
                          'cplife.loan_amount_title'.tr(),
                          style: AppStyle.size13Weight600,
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'cplife.loan_amount_description'.tr(),
                          style: AppStyle.size12Weight400Black,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        child: Text(
                          'cplife.loan_amount_title'.tr(),
                          style: AppStyle.size13Weight600,
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: CustomTextFormField(
                          isRial: true,
                          controller: priceCnt,
                          errorMessage: '',
                          hint: "0",
                          maxLength: savedMoney.toStringAsFixed(0).seRagham().length,
                          keyboardType: TextInputType.number,
                          prefix: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "cplife.saved_money_currency".tr(),
                              style: AppStyle.size12Weight400.copyWith(color: AppColors.lightGray2),
                            ),
                          ),
                          fillColor: AppColors.lightGrey,
                          enableBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.lightGray1,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          onChanged: (value) {
                            setState(() {
                              String loanAmountRequest = priceCnt.text.replaceAll(",", "").trim();
                              percentCnt.text =
                                  ((loanAmountRequest.parseDouble() * 100) / savedMoney).toStringAsFixed(0);
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Image(
                        height: 20,
                        image: AssetImage("assets/images/exchange.png"),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        child: Text(
                          'cplife.loan_percentage_title'.tr(),
                          style: AppStyle.size13Weight600,
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: CustomTextFormField(
                          isRial: true,
                          controller: percentCnt,
                          errorMessage: '',
                          hint: "0",
                          maxLength: 2,
                          keyboardType: TextInputType.number,
                          prefix: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "%",
                              style: AppStyle.size12Weight400.copyWith(color: AppColors.lightGray2),
                            ),
                          ),
                          fillColor: AppColors.lightGrey,
                          enableBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.lightGray1,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          onChanged: (value) {
                            setState(() {
                              priceCnt.text =
                                  ((percentCnt.text.parseInt() * savedMoney) / 100).toStringAsFixed(0).seRagham();
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        child: Text(
                          'cplife.account_number_title'.tr(),
                          style: AppStyle.size13Weight600,
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'cplife.account_number_description'.tr(),
                          style: AppStyle.size12Weight400costColor,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: CustomTextFormField(
                          isRial: false,
                          controller: ibanController,
                          errorMessage: '',
                          maxLength: 24,
                          hint: "cplife.enter_iban_number".tr(),
                          keyboardType: TextInputType.number,
                          fillColor: AppColors.lightGrey,
                          enableBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.lightGray1,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      BlocConsumer<IbanInquiryBloc, IbanInquiryState>(
                        bloc: _ibanInquiryBloc,
                        listener: (context, state) {
                          state.maybeWhen(
                            loadFailure: (failure) {
                              showErrorWidget(context, failure.code, failure.message!);
                            },
                            loadSuccess: (ibanInquiryResponseEntities) {
                              setState(() {
                                ownerIbanName = ibanInquiryResponseEntities.ibanInquiryResponseData.owners;
                                statusIban = ibanInquiryResponseEntities.ibanInquiryResponseData.status;
                              });
                              showSuccessWidget(
                                  context,
                                  "شماره شبای زیر\nIR ${ibanController.text} \nمربوط به حساب بانکی ${ibanInquiryResponseEntities.ibanInquiryResponseData.owners[0]} است"
                                      .toPersianDigit(), () {
                                Navigator.pop(context);
                              });
                            },
                            orElse: () {},
                          );
                        },
                        builder: (context, state) {
                          final bool loading = state is IbanInquiryStateLoading;
                          return ButtonSecondary(
                            title: "cplife.validate_iban_number".tr(),
                            buttonLoading: loading,
                            style: AppStyle.size14Weight600.copyWith(color: AppColors.primary),
                            customHeight: 52,
                            customWidth: width * 0.9,
                            color: AppColors.lightBlue,
                            assetName: 'assets/images/search.png',
                            onPressed: () {
                              if (ibanController.text.isNotEmpty) {
                                _ibanInquiryBloc.add(
                                  IbanInquiryEvent.ibanInquiryEventCalled(
                                    IbanInquiryParam(ibanNumber: ibanController.text),
                                  ),
                                );
                              }
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        child: Text(
                          'cplife.repayment_method'.tr(),
                          style: AppStyle.size13Weight600,
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'cplife.select_loan_repayment_method'.tr(),
                          style: AppStyle.size12Weight400costColor,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio<int>(
                            value: 1,
                            groupValue: selectedOption,
                            fillColor: MaterialStateProperty.all(AppColors.primary),
                            splashRadius: 20,
                            onChanged: (int? value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                          ),
                          Text(
                            "cplife.two_six_month_installments".tr(),
                            style: AppStyle.size13Weight600black,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio<int>(
                            value: 2,
                            groupValue: selectedOption,
                            fillColor: MaterialStateProperty.all(AppColors.primary),
                            splashRadius: 20,
                            onChanged: (int? value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                          ),
                          Text(
                            "cplife.four_six_month_installment".tr(),
                            style: AppStyle.size13Weight600black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      ButtonPrimary(
                        title: "cplife.confirm_continue".tr(),
                        buttonLoading: false,
                        customWidth: width * 0.9,
                        customHeight: 48,
                        onPressed: () {
                          if (_formKey.currentState!.validate() && statusIban == "Active" && selectedOption != 0) {
                            if (selectedOption == 1) {
                              widget.loanRequestStep3Callback(
                                  ibanController.text,
                                  ownerIbanName,
                                  "cplife.two_six_month_installments".tr(),
                                  priceCnt.text,
                                  percentCnt.text,
                                  savedMoney.toStringAsFixed(0));
                            } else {
                              widget.loanRequestStep3Callback(
                                  ibanController.text,
                                  ownerIbanName,
                                  "cplife.four_six_month_installments".tr(),
                                  priceCnt.text,
                                  percentCnt.text,
                                  savedMoney.toStringAsFixed(0));
                            }
                          }
                        },
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
