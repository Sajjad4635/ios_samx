import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/blocs/create_dposit/create_deposit_bloc.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/blocs/transaction_status/transaction_status_bloc.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/blocs/unit_price/unit_price_bloc.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/pages/deposit_unit_link_complete_screen.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/presentation/pages/deposit_unit_link_final_screen.dart';
import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/life_insurances/life_insurances_response_data/life_insurances_response_data.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/choice_life_insurances_step1.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/pages/choice_type_services_step2.dart';
import 'package:ios_samx/feature/cplife_app/insurances/presentation/widgets/cplife_indicator.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/iban_inquiry/iban_inquiry_bloc.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/register_loan/register_loan_bloc.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/saved_money/saved_money_bloc.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/validate_loan/validate_loan_bloc.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/blocs/create_withdraw_unit_linkes/create_withdraw_unit_linked_bloc.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/pages/withdraw_unit_link_complete_screen.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/presentation/pages/withdraw_unit_link_final_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_balance/wallet_balance_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_payment/wallet_payment_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_samx/core/base_widget/index.dart' show AppTopAppBar;

typedef PolicyIdCallback = void Function(String policyId);
typedef ChoiceLifeInsuranceStep1Callback = void Function(
  LifeInsurancesResponseData lifeInsurancesResponseData,
);

typedef LoanRequestStep3Callback = void Function(
  String ibanNumber,
  List<String> ibanOwner,
  String payback,
  String loanAmountRequest,
  String loanPercentRequest,
  String savedMoney,
);

typedef DepositAmountCallback = void Function(
  String depositAmount,
);

class MainLifeInsurancesScreenBody extends StatefulWidget {
  const MainLifeInsurancesScreenBody({super.key});

  @override
  State<MainLifeInsurancesScreenBody> createState() =>
      _MainLifeInsurancesScreenState();
}

class _MainLifeInsurancesScreenState
    extends State<MainLifeInsurancesScreenBody> {
  late LifeInsurancesResponseData lifeInsurance =
      const LifeInsurancesResponseData(
          policyId: 0,
          fullBNO: "",
          insurerName: "",
          insurerCode: 0,
          role: "",
          title: "",
          agent: "",
          agentCode: 0,
          issuer: "",
          issuerCode: 0,
          beginDate: "",
          endDate: "",
          status: "",
          insuranceYear: 0,
          isUnitLinked: true);

  String ibanNumber = "";
  List<String> ibanOwners = [];
  String paybackLoan = "";
  String amountLoan = "";
  String percentLoan = "";
  String savedMoney = "";
  bool isUnitlink = false;
  int selectedOption = 0;
  String depositAmount = "0.0";

  int withdrawPercent = 0;
  int withdrawAmount = 0;

  late IbanInquiryBloc _ibanInquiryBloc;
  late SavedMoneyBloc _savedMoneyBloc;
  late RegisterLoanBloc _registerLoanBloc;
  late ValidateLoanBloc _validateLoanBloc;
  late UnitPriceBloc _unitPriceBloc;
  late TransactionStatusBloc _transactionStatusBloc;
  late CreateDepositBloc _createDepositBloc;
  late WalletBalanceBloc _walletBalanceBloc;
  late WalletPaymentBloc _walletPaymentBloc;
  late CreateWithdrawBloc _createWithdrawBloc;

  final TextEditingController controller = TextEditingController();
  final TextEditingController percentController = TextEditingController();

  bool loading = false;

  List<Widget> initialTabs = [];
  @override
  void initState() {
    _ibanInquiryBloc = sl<IbanInquiryBloc>();
    _savedMoneyBloc = sl<SavedMoneyBloc>();
    _registerLoanBloc = sl<RegisterLoanBloc>();
    _validateLoanBloc = sl<ValidateLoanBloc>();
    _unitPriceBloc = sl<UnitPriceBloc>();
    _transactionStatusBloc = sl<TransactionStatusBloc>();
    _createDepositBloc = sl<CreateDepositBloc>();
    _walletBalanceBloc = sl<WalletBalanceBloc>();
    _walletPaymentBloc = sl<WalletPaymentBloc>();
    _createWithdrawBloc = sl<CreateWithdrawBloc>();
    super.initState();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    double height = MediaQuery.of(context).size.height;
    final tabController = DefaultTabController.of(context);

    return Scaffold(
      backgroundColor: colorTheme.bg,
      appBar: AppTopAppBar(
        title: "ثبت درخواست",
        onPressed: () {
          if (tabController.index != 0) {
            tabController.animateTo(tabController.index - 1);
          } else {
            Navigator.pop(context);
          }
        },
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => _ibanInquiryBloc,
          ),
          BlocProvider(
            create: (context) => _savedMoneyBloc,
          ),
          BlocProvider(
            create: (context) => _registerLoanBloc,
          ),
          BlocProvider(
            create: (context) => _validateLoanBloc,
          ),
          BlocProvider(
            create: (context) => _unitPriceBloc,
          ),
          BlocProvider(
            create: (context) => _transactionStatusBloc,
          ),
          BlocProvider(
            create: (context) => _createDepositBloc,
          ),
          BlocProvider(
            create: (context) => _walletBalanceBloc,
          ),
          BlocProvider(
            create: (context) => _walletPaymentBloc,
          ),
          BlocProvider(
            create: (context) => _createWithdrawBloc,
          ),
        ],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CplifeIndicator(),
              SizedBox(
                width: double.infinity,
                height: height * 0.8,
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ChoiceLifeInsurancesStep1(
                      choiceLifeInsuranceStep1Callback:
                          (LifeInsurancesResponseData
                              lifeInsurancesResponseData) {
                        setState(() {
                          lifeInsurance = lifeInsurancesResponseData;
                          isUnitlink = lifeInsurancesResponseData.isUnitLinked;
                        });
                      },
                    ),
                    ChoiceTypeServicesStep2(
                      policyId: lifeInsurance.policyId.toString(),
                      isUnitLinked: isUnitlink,
                      selectedOption: selectedOption,
                      onOptionTap: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                      isFormDisable: selectedOption == 0,
                    ),
                    if (isUnitlink && selectedOption == 1) ...[
                      DepositUnitLinkCompleteScreen(
                        policyId: lifeInsurance.policyId.toString(),
                        depositAmountCallback: (String amount) {
                          setState(() {
                            depositAmount = double.parse(
                                    Utils.removeThousandSeparators(amount))
                                .toStringAsFixed(0);
                          });
                        },
                      ),
                      DepositUnitLinkFinalScreen(
                        lifeInsurancesResponseData: lifeInsurance,
                        depositAmount: double.parse(depositAmount),
                      ),
                    ] else if (isUnitlink && selectedOption == 2) ...[
                      WithdrawUnitLinkCompleteScreen(
                        policyId: lifeInsurance.policyId.toString(),
                        controller: controller,
                        percentController: percentController,
                      ),
                      WithdrawUnitLinkFinalScreen(
                        lifeInsurancesResponseData: lifeInsurance,
                        withdrawAmount: controller.text,
                      ),
                    ] else if (!isUnitlink && selectedOption == 1) ...[
                      // LoanRequestScreenStep3(
                      //   policyId: policyId,
                      //   loanRequestStep3Callback: (
                      //     String ibanNumberValue,
                      //     List<String> ibanOwnerValue,
                      //     String paybackValue,
                      //     String loanAmountRequestValue,
                      //     String loanPercentRequestValue,
                      //     String savedMoneyValue,
                      //   ) {
                      //     setState(() {
                      //       ibanNumber = ibanNumberValue;
                      //       ibanOwners = ibanOwnerValue;
                      //       paybackLoan = paybackValue;
                      //       amountLoan = loanAmountRequestValue;
                      //       percentLoan = loanPercentRequestValue;
                      //       savedMoney = savedMoneyValue;
                      //     });
                      //   },
                      // ),
                      // LoanRequestScreenStep4(
                      //   fullPolicyNo: fullPolicyNo,
                      //   policyId: policyId,
                      //   issuerCode: issuerCode,
                      //   beginDate: beginDate,
                      //   endDate: endDate,
                      //   savedMoney: savedMoney,
                      //   amountLoanRequest: amountLoan,
                      //   percentLoanRequest: percentLoan,
                      //   ibanNumber: ibanNumber,
                      //   ownerIbanName: ibanOwners.toString(),
                      //   paybackNumber: paybackLoan,
                      //   insuranceYear: insuranceYear,
                      // )
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainLifeInsurancesScreen extends StatelessWidget {
  const MainLifeInsurancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: MainLifeInsurancesScreenBody(),
    );
  }
}
