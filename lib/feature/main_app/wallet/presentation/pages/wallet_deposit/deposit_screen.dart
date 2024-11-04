import 'package:ios_samx/core/base_widget/index.dart' show AppTextFieldToman;
import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/utils/launch_url.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_payment/params/wallet_payment_params.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_payment/wallet_payment_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_samx/core/extensions/parse_int_extension.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../../../core/utils/utils.dart';

class DepositScreen extends StatefulWidget {
  const DepositScreen({super.key});

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  TextEditingController depositController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String valueToman = '33';

  List<String> numberOfAmount = [
    "1000000",
    "2000000",
    "3000000",
  ];

  late WalletPaymentBloc _walletPaymentBloc;

  @override
  void initState() {
    _walletPaymentBloc = sl<WalletPaymentBloc>();

    AppLifecycleListener(
      onShow: () {
        if (mounted) Navigator.pop(context);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    return BlocProvider(
      create: (context) => _walletPaymentBloc,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: AppColors.darkGray,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'main.deposit_title'.tr(),
              style: AppStyle.size18Weight700,
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
          body: SizedBox(
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  AppTextFieldToman(
                    controller: depositController,
                    title: "main.enter_amount".tr(),
                    hint: "",
                    customWidth: width * 0.9,
                    errorMessage: "",
                    validator: (value) => Utils.amountValidator(value, 50000, 1000000000),
                    isRial: true,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    prefix: Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: const Text(
                          "ریال",
                          style: AppStyle.size15Weight400darkGray,
                        )),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    width: width * 0.9,
                    height: height * 0.06,
                    child: ListView.builder(
                        itemCount: numberOfAmount.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                depositController.text = numberOfAmount[index].seRagham();
                              });
                            },
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.28,
                              margin: EdgeInsets.only(left: index == numberOfAmount.length ? 0 : 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primary), borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "${numberOfAmount[index].toPersianDigit().seRagham()} ریال",
                                style: AppStyle.size13Weight600.copyWith(color: AppColors.primary),
                              ),
                            ),
                          );
                        }),
                  ),
                  const Spacer(),
                  BlocConsumer<WalletPaymentBloc, WalletPaymentState>(
                    bloc: _walletPaymentBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        loadFailure: (failure) {
                          showErrorWidget(context, failure.code, failure.message!);
                        },
                        loadSuccess: (walletPaymentResponseEntities) {
                            launchInBrowser(
                                walletPaymentResponseEntities.walletPaymentResponseData.paymentUrl);
                          
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      final loading = state is WalletPaymentStateLoading;
                      return ButtonPrimary(
                        title: "main.confirm".tr(),
                        buttonLoading: loading,
                        customWidth: width * 0.9,
                        customHeight: 48,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _walletPaymentBloc = sl<WalletPaymentBloc>();
                            _walletPaymentBloc.add(
                              WalletPaymentEvent.walletPaymentEventCalled(
                                WalletPaymentParams(
                                  transferTypeId: "aec2366b-dcc4-4aa5-994a-d45528ab38ed",
                                  amount: depositController.value.text.replaceAll(",", "").parseInt(),
                                  redirectUrl:
                                      kIsWeb ? dotenv.env["REDIRECT_WALLET_URL"]! : "https://samx.vservices.ir",
                                ),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: height * 0.05,
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
