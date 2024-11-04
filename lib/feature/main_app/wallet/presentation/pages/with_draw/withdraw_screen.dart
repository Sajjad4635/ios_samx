import 'package:ios_samx/core/base_widget/app_snack_bar/index.dart';
import 'package:ios_samx/core/base_widget/index.dart' show AppTextFieldToman;
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/simple_rounded_container.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_account/get_account_response_data/get_account_response_data.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/get_account/get_account_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_balance/params/wallet_balance_params.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_balance/wallet_balance_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/with_draw/with_draw_price_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/choose_iban_widget.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/wallet_balance_widget.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../../core/base_widget/app_buttons/index.dart';
import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/app_style.dart';
import '../../../../../../core/constant/strings.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../../../core/utils/utils.dart';

import '../../widget/wallet_data_widget.dart';

typedef ChooseIbanCallback = void Function(String iban);

typedef EnterOtpCallback = void Function(String otp);

class WithDrawScreen extends StatefulWidget {
  final String activeIban;

  const WithDrawScreen({required this.activeIban, super.key});

  @override
  State<WithDrawScreen> createState() => _WithDrawScreenState();
}

class _WithDrawScreenState extends State<WithDrawScreen> {
  TextEditingController priceController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late WalletBalanceBloc _walletBalanceBloc;
  late GetAccountBloc _getAccountBloc;
  List<GetAccountResponseData> getAccountResponseData = [];
  String givenName = "";
  String familyName = "";
  String nationalCode = "";
  double walletBalance = 0;
  bool isBalanceHide = true;
  String ibanNumber = "";
  String ibanIcon = "";
  int selectedValue = 0;

  @override
  void initState() {
    Box box = Hive.box(Strings.appDBName);
    givenName = box.get("given_name");
    familyName = box.get("family_name");
    _walletBalanceBloc = sl<WalletBalanceBloc>();
    _getAccountBloc = sl<GetAccountBloc>();
    nationalCode = box.get(Strings.nationalId);
    ibanNumber = widget.activeIban.toPersianDigit();
    ibanIcon =
        "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(widget.activeIban.substring(4, 7))}.png";
    _walletBalanceBloc.add(WalletBalanceEvent.walletBalanceEventCalled(
        WalletBalanceParams(nationalCode: nationalCode)));
    _getAccountBloc
        .add(GetAccountEvent.getAccountEventCalled(noParams: NoParams()));

    super.initState();
  }

  bool validatePrice() {
    if (priceController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return BlocProvider(
      create: (context) => _getAccountBloc,
      child: BlocListener<GetAccountBloc, GetAccountState>(
        bloc: _getAccountBloc,
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (error) {
              showErrorWidget(context, error.code!, error.message!);
            },
            loadSuccess: (getAccountEntities) {
              setState(() {
                // getAccountResponseData =
                //     getAccountEntities.getAccountResponseData;
                getAccountResponseData = getAccountEntities
                    .getAccountResponseData
                    .where((item) => item.isActive)
                    .toList();

                selectedValue = getAccountResponseData
                    .indexWhere((element) => element.isDefault == true);
              });
            },
            orElse: () {},
          );
        },
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: AppColors.lightWhite,
              appBar: AppBar(
                backgroundColor: AppColors.darkGray,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  'main.withdraw_title'.tr(),
                  style: AppStyle.size18wWeight700,
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.lightGrey,
                    ),
                  ),
                ),
              ),
              body: Center(
                child: SizedBox(
                  width: width,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomScrollView(
                        slivers: [
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "main.wallet".tr(),
                                    style: TextTypography.bodySmall
                                        .copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "main.your_wallet_balance".tr(),
                                      style: TextTypography.bodySmall.copyWith(
                                          color: colorTheme.solidVariant),
                                    ),
                                    BlocConsumer<WalletBalanceBloc,
                                        WalletBalanceState>(
                                      bloc: _walletBalanceBloc,
                                      listener: (context, state) {
                                        state.maybeWhen(
                                          loadFailure: (failure) {
                                            showErrorWidget(context,
                                                failure.code, failure.message!);
                                          },
                                          loadSuccess:
                                              (walletBalanceResponseEntities) {
                                            setState(() {
                                              walletBalance =
                                                  walletBalanceResponseEntities
                                                      .walletBalanceResponseData
                                                      .walletBalance;
                                            });
                                          },
                                          orElse: () {},
                                        );
                                      },
                                      builder: (context, state) {
                                        return WalletBalanceWidget(
                                          isBalanceHide: isBalanceHide,
                                          iconTap: () {
                                            setState(() {
                                              isBalanceHide = !isBalanceHide;
                                            });
                                          },
                                          walletBalance: walletBalance
                                              .toStringAsFixed(0)
                                              .seRagham()
                                              .toPersianDigit(),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: height * 0.02),
                                  child: Divider(
                                    color: colorTheme.borders,
                                  ),
                                ),
                                Container(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    alignment: Alignment.topRight,
                                    child: Text('main.default_account'.tr(),
                                        style: TextTypography.bodySmall
                                            .copyWith(
                                                fontWeight: FontWeight.w600))),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                InkWell(
                                  onTap: () async {
                                    await chooseIbanBottomSheet();
                                  },
                                  child: SimpleRoundedContainer(
                                    width: width - 20,
                                    height: height * 0.1,
                                    bgColor: AppColors.lightGrey,
                                    borderRadius: 8.0,
                                    borderColor: colorTheme.borders,
                                    widget: WalletDataWidget(
                                        caption: "main.wallet_iban_number".tr(),
                                        captionStyle: TextTypography.bodyMedium
                                            .copyWith(
                                                color: colorTheme.textVariant),
                                        title: Utils.ibanFormatter(ibanNumber),
                                        titleStyle: TextTypography.bodySmall
                                            .copyWith(
                                                fontWeight: FontWeight.w600),
                                        subTitle: '',
                                        assetName: ibanIcon),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                AppTextFieldToman(
                                  controller: priceController,
                                  title: "main.enter_amount".tr(),
                                  hint: "",
                                  isRial: true,
                                  customWidth: width - 20,
                                  errorMessage:
                                      "main.invalid_amount_error".tr(),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  validator: (value) => Utils.amountValidator(
                                      value, 50000, 1000000000),
                                  fillColor: Colors.white,
                                  enableBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorTheme.borders,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                  ),
                                  prefix: Container(
                                      width: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "main.saved_money_currency".tr(),
                                        style: AppStyle.size15Weight400Grey50,
                                      )),
                                  onChanged: (val) {
                                    setState(() {});
                                  },
                                ),
                                const Spacer(),
                                AppButton(
                                  title: "main.confirm".tr(),
                                  buttonLoading: false,
                                  isFilledEnable:
                                      validatePrice() ? true : false,
                                  customWidth: width - 20,
                                  leftIcon: Magicon.angleLeft,
                                  customHeight: 48,
                                  onPressed: () {
                                    if (double.tryParse(priceController.text
                                            .replaceAll(",", ""))! >
                                        walletBalance) {
                                      AppSnackBar.showSnackBar(
                                        context: context,
                                        type: SnackBarType.error,
                                        title: '',
                                        message: "main.not_enough_balance".tr(),
                                      );
                                    } else {
                                      if (_formKey.currentState!.validate()) {
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                            child: WithDrawPriceScreen(
                                                iban: ibanNumber.toEnglishDigit(),
                                                amount: priceController.text),
                                            type:
                                                PageTransitionType.leftToRight,
                                          ),
                                        );
                                      }
                                    }
                                  },
                                  buttonType: ButtonType.isFilled,
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }

  Future<void> chooseIbanBottomSheet() async {
    final colorTheme = context.colorTheme<CustomTheme>();
    await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return ChooseIbanWidget(
            getAccountResponseData: getAccountResponseData,
            selectedValue: selectedValue,
            chooseIbanCallback: (iban) {
              setState(() {
                ibanNumber = iban.toPersianDigit();
                ibanIcon =
                    "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(iban.substring(4, 7))}.png";
                selectedValue = getAccountResponseData
                    .indexWhere((element) => element.iban == iban);
              });
            },
          );
        });
  }
}
