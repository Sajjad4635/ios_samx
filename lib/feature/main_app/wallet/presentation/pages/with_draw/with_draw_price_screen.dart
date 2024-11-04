import 'package:ios_samx/core/base_widget/app_buttons/app_button/app_button.dart';
import 'package:ios_samx/core/base_widget/app_snack_bar/index.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/count_down_time.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_withdraw/params/wallet_withdraw_params.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/send_otp/send_otp_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/wallet_withdraw/wallet_withdraw_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/with_draw/with_draw_result_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/otp_widget.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/app_style.dart';
import '../../../../../../core/constant/strings.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../../injection_container.dart';
import '../../../domain/usecases/send_otp/params/send_otp_params.dart';
import '../../widget/wallet_data_widget.dart';

class WithDrawPriceScreen extends StatefulWidget {
  final String amount;
  final String iban;

  const WithDrawPriceScreen(
      {super.key, required this.amount, required this.iban});

  @override
  State<WithDrawPriceScreen> createState() => _WithDrawPriceScreenState();
}

class _WithDrawPriceScreenState extends State<WithDrawPriceScreen> {
  TextEditingController priceController = TextEditingController();

  late WalletWithdrawBloc _withdrawBloc;
  late SendOtpBloc _sendOtpBloc;

  String walletBalance = "";

  String phoneNo = "";
  String walletSegmentId = "";
  String nationalCode = "";

  Box box = Hive.box(Strings.appDBName);
  late bool _visible;
  int second = 120;
  late bool _visibleTimer;
  String otpCode = "";
  bool isOtpWrong = false;
  String date = "";
  int amount = 0;

  @override
  void initState() {
    _withdrawBloc = sl<WalletWithdrawBloc>();
    _sendOtpBloc = sl<SendOtpBloc>();
    Box box = Hive.box(Strings.appDBName);
    walletBalance = box.get(Strings.walletBalance);
    nationalCode = box.get(Strings.nationalId);
    phoneNo = box.get(Strings.phoneId);
    walletSegmentId = box.get(Strings.walletSegmentId);
    _visible = false;
    _visibleTimer = true;
    date = Jalali.now().toJalaliDateTime().split(' ')[0].replaceAll("-", "/");
    amount = int.parse(widget.amount.toString().replaceAll(",", ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _withdrawBloc,
        ),
        BlocProvider(
          create: (context) => _sendOtpBloc,
        ),
      ],
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.lightWhite,
          resizeToAvoidBottomInset: false,
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
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 12.0),
                        alignment: Alignment.topRight,
                        child: Text('main.withdraw_wallet'.tr(),
                            style: AppStyle.size13Weight600),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SimpleRoundedContainer(
                        width: width - 20,
                        height: height * 0.16,
                        bgColor: AppColors.lightGreyBg,
                        borderRadius: 8.0,
                        borderColor: Colors.transparent,
                        onTap: () {},
                        widget: Row(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'main.withdraw_amount'.tr(),
                                    style: AppStyle.size12Weight400,
                                  ),
                                  Text(
                                    "${widget.amount.toPersianDigit()} ریال ",
                                    style: AppStyle.size20Weight700,
                                  ),
                                  Row(
                                    children: [
                                      Text('main.wallet_balance'.tr(),
                                          style: TextTypography.bodySmall
                                              .copyWith(
                                                  color:
                                                      colorTheme.solidVariant)),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "${walletBalance.toPersianDigit().seRagham()} ریال ",
                                        style: TextTypography.bodySmall
                                            .copyWith(
                                                color: colorTheme.bgInverse,
                                                fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Divider(
                        color: AppColors.borderColors,
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                          padding: const EdgeInsets.only(right: 10.0),
                          alignment: Alignment.topRight,
                          child: Text('main.deposit_wallet'.tr(),
                              style: AppStyle.size13Weight600)),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SimpleRoundedContainer(
                        width: width - 20,
                        height: height * 0.1,
                        bgColor: AppColors.lightGrey,
                        borderRadius: 8.0,
                        borderColor: colorTheme.borders,
                        widget: WalletDataWidget(
                            caption: "main.wallet_iban_number".tr(),
                            captionStyle: TextTypography.bodyMedium
                                .copyWith(color: colorTheme.textVariant),
                            title: Utils.ibanFormatter(
                                widget.iban.toPersianDigit()),
                            titleStyle: TextTypography.bodySmall
                                .copyWith(fontWeight: FontWeight.w600),
                            subTitle: '',
                            assetName:
                                "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(widget.iban.toEnglishDigit().substring(4, 7))}.png"),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const Spacer(),
                      SimpleRoundedContainer(
                        width: width - 20,
                        height: height * 0.1,
                        bgColor: AppColors.lightPurple,
                        borderRadius: 8.0,
                        borderColor: AppColors.purple,
                        widget: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                "• ${'main.transfer_process_notice'.tr()}",
                                style: TextTypography.labelMedium
                                    .copyWith(color: colorTheme.info),
                              ),
                              Text(
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                "• ${'main.transfer_process_notice2'.tr()}",
                                style: TextTypography.labelMedium
                                    .copyWith(color: colorTheme.info),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      amount > 300000
                          ? BlocConsumer<SendOtpBloc, SendOtpState>(
                              bloc: _sendOtpBloc,
                              listener: (context, state) {
                                state.maybeWhen(
                                  loadFailure: (failure) {
                                    showErrorWidget(context, failure.code,
                                        failure.message!);
                                  },
                                  loadSuccess: (entities) {
                                    // otpBottomSheet();
                                  },
                                  orElse: () {},
                                );
                              },
                              builder: (context, state) {
                                // final btnLoading = state is SendOtpStateLoading;
                                return AppButton(
                                  buttonType: ButtonType.isFilled,
                                  title: "main.confirm_and_withdraw".tr(),
                                  // buttonLoading: btnLoading,
                                  customWidth: width - 20,
                                  customHeight: 48,
                                  leftIcon: Magicon.angleLeft,
                                  onPressed: () async {
                                    otpBottomSheet();

                                    _sendOtpBloc.add(
                                        SendOtpEvent.sendOtpEventCalled(
                                            SendOtpParams(
                                                nationalCode: nationalCode,
                                                amount: amount,
                                                otpType: 1,
                                                destinationIbanNumber:
                                                    widget.iban)));
                                  },
                                );
                              },
                            )
                          : BlocConsumer<WalletWithdrawBloc,
                                  WalletWithdrawState>(
                              bloc: _withdrawBloc,
                              listener: (context, state) => state.maybeWhen(
                                    orElse: () => null,
                                    loadSuccess: (withdrawEntities) {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            child: WithDrawResultScreen(
                                              iban: widget.iban,
                                              withdrawEntities:
                                                  withdrawEntities,
                                            ),
                                            type:
                                                PageTransitionType.leftToRight),
                                      );
                                      return null;
                                    },
                                    loadFailure: (failure) {
                                      showErrorWidget(context, failure.code,
                                          failure.message!);
                                      return null;
                                    },
                                  ),
                              builder: (context, state) {
                                final btnLoading =
                                    state is WalletWithdrawStateLoading;
                                return AppButton(
                                  buttonType: ButtonType.isFilled,
                                  title: "main.confirm_and_withdraw".tr(),
                                  leftIcon: Magicon.angleLeft,
                                  buttonLoading: btnLoading,
                                  customWidth: double.infinity,
                                  customHeight: 48,
                                  onPressed: () {
                                    if (int.parse(walletBalance) >= amount) {
                                      _withdrawBloc.add(WalletWithdrawEvent
                                          .walletWithdrawEventCalled(
                                              WalletWithDrawParams(
                                                  sourceWalletId:
                                                      walletSegmentId,
                                                  sourceMobileNumber: phoneNo,
                                                  destinationIbanNumber:
                                                      widget.iban,
                                                  note:
                                                      " انتقال وجه از کیف پول کاربر با کد ملی $nationalCode  به حساب بانکی با شماره شبا ${widget.iban} در تاریخ $date",
                                                  amount: amount)));
                                    } else {
                                      showErrorWidget(context, 101,
                                          "main.invalid_inserted_amount".tr());
                                    }
                                  },
                                );
                              }),
                      SizedBox(
                        height: height * 0.05,
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

  Future<void> otpBottomSheet() async {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();
    if (isOtpWrong == true) {
      _visibleTimer = true;
      _visible = false;
      second = 120;
      isOtpWrong = false;
    }
    await await showModalBottomSheet(
        context: context,
        backgroundColor: colorTheme.white,
        isScrollControlled: true,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return OtpWidget(
              phoneNumber: phoneNo,
              isError: isOtpWrong,
              enterOtpCallback: (otp) {
                setState(() {
                  otpCode = otp;
                });
              },
              onCompleted: (pin) {
                if (_visibleTimer) {
                  _withdrawBloc.add(WalletWithdrawEvent
                      .walletWithdrawEventCalled(WalletWithDrawParams(
                          sourceWalletId: walletSegmentId,
                          code: otpCode,
                          sourceMobileNumber: phoneNo,
                          destinationIbanNumber: widget.iban,
                          note:
                              " انتقال وجه از کیف پول کاربر با کد ملی $nationalCode  به حساب بانکی با شماره شبا ${widget.iban} در تاریخ $date",
                          amount: amount)));
                }
              },
              buttonWidget:
                  BlocConsumer<WalletWithdrawBloc, WalletWithdrawState>(
                      bloc: _withdrawBloc,
                      listener: (context, state) => state.maybeWhen(
                            orElse: () => null,
                            loadSuccess: (withdrawEntities) {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: WithDrawResultScreen(
                                      iban: widget.iban,
                                      withdrawEntities: withdrawEntities,
                                    ),
                                    type: PageTransitionType.leftToRight),
                              );
                              return null;
                            },
                            loadFailure: (failure) {
                              if (failure.code == 911) {
                                setState(() {
                                  isOtpWrong = true;
                                });
                              } else {
                                setState(() {
                                  isOtpWrong = false;
                                });
                                Navigator.of(context).pop();
                                AppSnackBar.showSnackBar(
                                    context: context,
                                    type: SnackBarType.error,
                                    title: '',
                                    message: failure.message ??
                                        "main.report_error".tr());
                              }

                              return null;
                            },
                          ),
                      builder: (context, state) {
                        final btnLoading = state is WalletWithdrawStateLoading;
                        return AppButton(
                          buttonType: ButtonType.isFilled,
                          title: "main.confirm".tr(),
                          leftIcon: Magicon.angleLeft,
                          buttonLoading: btnLoading,
                          customWidth: double.infinity,
                          isFilledEnable: otpCode.length == 6 ? true : false,
                          customHeight: 48,
                          onPressed: () {
                            if (int.parse(walletBalance) >= amount) {
                              _withdrawBloc.add(WalletWithdrawEvent
                                  .walletWithdrawEventCalled(WalletWithDrawParams(
                                      sourceWalletId: walletSegmentId,
                                      code: otpCode,
                                      sourceMobileNumber: phoneNo,
                                      destinationIbanNumber: widget.iban,
                                      note:
                                          " انتقال وجه از کیف پول کاربر با کد ملی $nationalCode  به حساب بانکی با شماره شبا ${widget.iban} در تاریخ $date",
                                      amount: amount)));
                            } else {
                              showErrorWidget(context, 101,
                                  "main.invalid_inserted_amount".tr());
                            }
                          },
                        );
                      }),
              timerWidget: Container(
                width: width * 1,
                height: height * 0.07,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: _visibleTimer,
                      child: Align(
                        alignment: Alignment.center,
                        child: CountdownTimerWidget(
                          second: second,
                          secondCallback: (value) {
                            second = value;
                            if (second == 0) {
                              setState(() {
                                _visible = true;
                                _visibleTimer = false;
                              });
                            }
                          },
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _visible,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _visibleTimer = true;
                            _visible = false;
                            second = 120;
                          });

                          _sendOtpBloc.add(SendOtpEvent.sendOtpEventCalled(
                              SendOtpParams(
                                  nationalCode: nationalCode,
                                  amount: amount,
                                  otpType: 1,
                                  destinationIbanNumber: widget.iban)));
                        },
                        child: Text(
                          "main.resend_code".tr(),
                          style: TextTypography.bodySmall.copyWith(
                              fontWeight: FontWeight.w600,
                              color: colorTheme.primary),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }
}
