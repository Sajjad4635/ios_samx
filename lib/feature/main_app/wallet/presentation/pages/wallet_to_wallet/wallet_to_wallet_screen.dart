import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_balance/params/wallet_balance_params.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_balance/wallet_balance_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/wallet_to_wallet/wallet_to_wallet_validation.dart';
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

import '../../../../../../core/base_widget/index.dart';
import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/strings.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../../../core/utils/utils.dart';

class WalletToWalletScreen extends StatefulWidget {
  final String walletSegmentId;

  const WalletToWalletScreen({super.key, required this.walletSegmentId});

  @override
  State<WalletToWalletScreen> createState() => _WalletToWalletScreenState();
}

class _WalletToWalletScreenState extends State<WalletToWalletScreen> {
  late WalletBalanceBloc _walletBalanceBloc;
  TextEditingController phoneController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool borderError = false;
  bool isBalanceHide = true;
  double walletBalance = 0;
  String nationalCode = "";

  @override
  void initState() {
    super.initState();
    _walletBalanceBloc = sl<WalletBalanceBloc>();
    final Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get(Strings.nationalId);
    _walletBalanceBloc.add(WalletBalanceEvent.walletBalanceEventCalled(
        WalletBalanceParams(nationalCode: nationalCode)));
  }

  bool validateForm() {
    if (phoneController.text.isNotEmpty &&
        phoneController.text.length == 11 &&
        phoneController.text.toString().startsWith("09") &&
        priceController.text.isNotEmpty ) {
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

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.lightWhite,
        appBar: AppBar(
          backgroundColor: AppColors.darkGray,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'main.wallet_to_wallet'.tr(),
            style: TextTypography.headLineSmall.copyWith(color: Colors.white),
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
                      fillOverscroll: true,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "main.your_wallet_balance".tr(),
                              style: TextTypography.bodySmall
                                  .copyWith(color: colorTheme.solidVariant),
                            ),
                            BlocConsumer<WalletBalanceBloc, WalletBalanceState>(
                              bloc: _walletBalanceBloc,
                              listener: (context, state) {
                                state.maybeWhen(
                                  loadFailure: (failure) {
                                    showErrorWidget(
                                        context, failure.code, failure.message!);
                                  },
                                  loadSuccess: (walletBalanceResponseEntities) {
                                    setState(() {
                                      walletBalance = walletBalanceResponseEntities
                                          .walletBalanceResponseData.walletBalance;
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
                          padding: EdgeInsets.symmetric(vertical: height * 0.02),
                          child: Divider(
                            color: colorTheme.borders,
                          ),
                        ),
                        AppTextField(
                          validator: (value) {
                            final Box box = Hive.box(Strings.appDBName);
                            String? phoneNumber = box.get(Strings.phoneId);
                            if (phoneNumber == phoneController.text) {
                              return "main.invalid_mobile_number".tr();
                            }
                            return Utils.validateMobile(value);
                          },
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          controller: phoneController,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          title: "main.enter_destination_information".tr(),
                          hintText: "به عنوان مثال 09109284562",
                          customWidth: width - 20,
                          maxLength: 11,
                          errorMessage:
                          "main.destination_information_is_not_correct".tr(),
                          keyboardType: TextInputType.number,
                          suffixIcon: Container(
                              width: 50,
                              alignment: Alignment.center,
                              child: const Image(
                                width: 13,
                                height: 13,
                                image: AssetImage(
                                  'assets/images/mob.png',
                                ),
                              )),
                          onChanged: (val) {
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        AppTextFieldToman(
                          controller: priceController,
                          title: "main.enter_amount".tr(),
                          hint: "",
                          isRial: true,
                          customWidth: width - 20,
                          errorMessage: "main.invalid_amount_error".tr(),
                          keyboardType: TextInputType.number,
                          validator: (value) =>
                              Utils.amountValidator(value, 10000, 1000000000),
                          fillColor: Colors.white,
                          enableBorder: borderError
                              ? const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(8)),
                          )
                              : OutlineInputBorder(
                            borderSide: BorderSide(
                              color: colorTheme.borders,
                            ),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
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
                        SizedBox(
                          height: height * 0.02,
                        ),
                        AppTextField(
                          customWidth: width - 20,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: descriptionController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(200),
                          ],
                          label: 'main.optional_description'.tr(),
                        ),
                        const Spacer(),

                        AppButton(
                          title: "main.confirm".tr(),
                          buttonLoading: false,
                          leftIcon: Magicon.angleLeft,
                          isFilledEnable: validateForm() ? true : false,
                          customWidth: width - 20,
                          customHeight: 48,
                          onPressed: () {
                            if (double.tryParse(
                                priceController.text.replaceAll(",", ""))! >
                                walletBalance) {
                              AppSnackBar.showSnackBar(
                                context: context,
                                type: SnackBarType.error,
                                title: '',
                                message: "main.not_enough_balance".tr(),
                              );
                            } else {
                              if (_formKey.currentState!.validate()) {
                                if (phoneController.text.isNotEmpty &&
                                    phoneController.text.length == 11 &&
                                    phoneController.text
                                        .toString()
                                        .startsWith("09") &&
                                    priceController.text.isNotEmpty &&
                                    widget.walletSegmentId.isNotEmpty) {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        child: (WalletToWalletValidation(
                                          amountTransfer: priceController.text,
                                          destinationPhoneNo: phoneController.text,
                                          walletSegmentId: widget.walletSegmentId,
                                          description: descriptionController.text,
                                        )),
                                        type: PageTransitionType.leftToRight),
                                  );
                                } else {
                                  setState(() {
                                    borderError = false;
                                  });
                                }
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
      ),
    );
  }
}
