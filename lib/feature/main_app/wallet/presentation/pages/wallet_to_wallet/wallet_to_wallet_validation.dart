import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/widgets/count_down_time.dart';
import 'package:ios_samx/core/widgets/simple_rounded_container.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/send_otp/params/send_otp_params.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/bloc/send_otp/send_otp_bloc.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/wallet_to_wallet/wallet_to_wallet_result.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/otp_widget.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../../core/base_widget/index.dart';
import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/strings.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../../../core/widgets/alert_dialog.dart';
import '../../../../../../injection_container.dart';
import '../../../domain/usecases/wallet_balance/params/wallet_balance_params.dart';
import '../../../domain/usecases/wallet_to_wallet/params/wallet_to_wallet_params.dart';
import '../../bloc/wallet_balance/wallet_balance_bloc.dart';
import '../../bloc/wallet_to_wallet/wallet_to_wallet_bloc.dart';

class WalletToWalletValidation extends StatefulWidget {
  final String amountTransfer;
  final String walletSegmentId;
  final String destinationPhoneNo;
  final String description;

  const WalletToWalletValidation({
    super.key,
    required this.amountTransfer,
    required this.destinationPhoneNo,
    required this.walletSegmentId,
    required this.description,
  });

  @override
  State<WalletToWalletValidation> createState() =>
      _WalletToWalletValidationState();
}

class _WalletToWalletValidationState extends State<WalletToWalletValidation> {
  late WalletBalanceBloc _walletBalanceBloc;
  late WalletToWalletBloc _walletToWalletBloc;
  late SendOtpBloc _sendOtpBloc;

  String nationalCode = "";
  String phoneNo = "";
  double walletBalance = 0;
  late bool _visible;
  int second = 120;
  late bool _visibleTimer;
  String otpCode = "";
  bool isOtpWrong = false;
  String date = "";
  int amount = 0;

  @override
  void initState() {
    final Box box = Hive.box(Strings.appDBName);
    nationalCode = box.get(Strings.nationalId);
    phoneNo = box.get(Strings.phoneId);
    _walletBalanceBloc = sl<WalletBalanceBloc>();
    _walletToWalletBloc = sl<WalletToWalletBloc>();
    _sendOtpBloc = sl<SendOtpBloc>();
    _walletBalanceBloc.add(WalletBalanceEvent.walletBalanceEventCalled(
        WalletBalanceParams(nationalCode: nationalCode)));
    _visible = false;
    _visibleTimer = true;
    date = Jalali.now().toJalaliDateTime().split(' ')[0].replaceAll("-", "/");
    amount = int.parse(widget.amountTransfer.toString().replaceAll(",", ""));

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
          create: (context) => _walletBalanceBloc,
        ),
        BlocProvider(
          create: (context) => _walletToWalletBloc,
        ),
      ],
      child: Directionality(
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
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width,
                        padding: const EdgeInsets.only(right: 10.0),
                        alignment: Alignment.topRight,
                        child: Text(
                          'main.your_desired_destination'.tr(),
                          style: TextTypography.bodySmall
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: colorTheme.borders.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: colorTheme.borders),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 8.0, left: 10),
                              child: Image(
                                image: AssetImage("assets/images/avatar.png"),
                                height: 56,
                                width: 56,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'home.wallet'.tr(),
                                  style: TextTypography.titleSmall
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.destinationPhoneNo.toPersianDigit(),
                                  style: TextTypography.titleSmall
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.02, bottom: height * 0.04),
                        child: Divider(
                          color: colorTheme.borders,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'main.transfer_with_amount'.tr(),
                          style: TextTypography.bodySmall
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SimpleRoundedContainer(
                        width: width,
                        height: 82,
                        bgColor: AppColors.lightGreyBg,
                        borderRadius: 8.0,
                        borderColor: Colors.transparent,
                        onTap: () {},
                        widget: Padding(
                          padding: const EdgeInsets.only(
                              right: 5.0, top: 10, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${widget.amountTransfer.toPersianDigit()} ریال",
                                style: TextTypography.headLineMedium
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              BlocConsumer<WalletBalanceBloc,
                                  WalletBalanceState>(
                                bloc: _walletBalanceBloc,
                                listener: (context, state) {
                                  state.maybeWhen(
                                    loadFailure: (failure) {
                                      showErrorWidget(context, failure.code,
                                          failure.message!);
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
                                  final loading =
                                      state is WalletBalanceStateLoading;
                                  return loading
                                      ? Container(
                                          alignment: Alignment.center,
                                          child:
                                              const CircularProgressIndicator(),
                                        )
                                      : Row(
                                          children: [
                                            Text(
                                              'main.your_wallet_balance'.tr(),
                                              style: TextTypography.bodySmall
                                                  .copyWith(
                                                      color: colorTheme
                                                          .solidVariant),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            walletBalance.toString().isNotEmpty
                                                ? Text(
                                                    '${walletBalance.toStringAsFixed(0).seRagham().toPersianDigit()}  ریال',
                                                    style: TextTypography
                                                        .bodySmall
                                                        .copyWith(
                                                            color: colorTheme
                                                                .bgInverse,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  )
                                                : Text(
                                                    'main.unknown'.tr(),
                                                    // style: AppStyle.size13Weight600,
                                                  )
                                          ],
                                        );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const Spacer(),
                      amount >
                              300000
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
                                  title: "main.confirm".tr(),
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
                                      destinationPhoneNumber:
                                          widget.destinationPhoneNo,
                                      otpType: 0,
                                      amount: amount,
                                    )));
                                  },
                                );
                              },
                            )
                          : BlocConsumer<WalletToWalletBloc,
                                  WalletToWalletState>(
                              bloc: _walletToWalletBloc,
                              listener: (context, state) {
                                state.maybeWhen(
                                  loadFailure: (failure) {
                                    if (failure.code == 911) {
                                      setState(() {
                                        isOtpWrong = true;
                                      });
                                    } else {
                                      showErrorWidget(context, failure.code,
                                          failure.message!);
                                    }
                                  },
                                  loadSuccess:
                                      (walletToWalletResponseEntities) {
                                    if (walletToWalletResponseEntities
                                            .dioResponse.code ==
                                        200) {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          PageTransition(
                                              child: (WalletToWalletResult(
                                                amountTransfer:
                                                    widget.amountTransfer,
                                                status: "True",
                                                phoneNo: phoneNo,
                                                message:
                                                    walletToWalletResponseEntities
                                                        .dioResponse.message[0],
                                                transferTime:
                                                    walletToWalletResponseEntities
                                                        .walletToWalletResponseData
                                                        .transferTime,
                                                transferPersianDate:
                                                    walletToWalletResponseEntities
                                                        .walletToWalletResponseData
                                                        .transferPersianDate,
                                                referenceNumber:
                                                    walletToWalletResponseEntities
                                                        .walletToWalletResponseData
                                                        .referenceNumber,
                                                destinationPhoneNo:
                                                    widget.destinationPhoneNo,
                                              )),
                                              type: PageTransitionType
                                                  .leftToRight),
                                          (route) => false);
                                    } else {
                                      showErrorWidget(
                                          context,
                                          walletToWalletResponseEntities
                                              .dioResponse.code,
                                          walletToWalletResponseEntities
                                              .dioResponse.message[0]);
                                    }
                                  },
                                  orElse: () {},
                                );
                              },
                              builder: (context, state) {
                                final bool loadingWalletToWallet =
                                    state is WalletToWalletStateLoading;
                                return AppButton(
                                  buttonType: ButtonType.isFilled,
                                  title: "main.confirm".tr(),
                                  leftIcon: Magicon.angleLeft,
                                  buttonLoading: loadingWalletToWallet,
                                  customWidth: double.infinity,
                                  customHeight: 48,
                                  onPressed: () {
                                    _walletToWalletBloc.add(
                                      WalletToWalletEvent
                                          .walletToWalletEventCalled(
                                        WalletToWalletParams(
                                          amount: widget.amountTransfer
                                              .replaceAll(",", ""),
                                          destinationMobileNumber:
                                              widget.destinationPhoneNo,
                                          sourceMobileNumber: phoneNo,
                                          sourceWalletId:
                                              widget.walletSegmentId,
                                          transferTypeId:
                                              "20A0152B-9853-46F4-852F-446D112C569A",
                                          note:
                                              " انتقال وجه از کاربر $phoneNo به ${widget.destinationPhoneNo} در تاریخ $date",
                                        ),
                                      ),
                                    );
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
                  _walletToWalletBloc.add(
                    WalletToWalletEvent.walletToWalletEventCalled(
                      WalletToWalletParams(
                        amount: widget.amountTransfer.replaceAll(",", ""),
                        code: otpCode,
                        destinationMobileNumber:
                        widget.destinationPhoneNo,
                        sourceMobileNumber: phoneNo,
                        sourceWalletId: widget.walletSegmentId,
                        transferTypeId:
                        "20A0152B-9853-46F4-852F-446D112C569A",
                        note:
                        " انتقال وجه از کاربر $phoneNo به ${widget.destinationPhoneNo} در تاریخ $date",
                      ),
                    ),
                  );
                }
              },
              buttonWidget: BlocConsumer<WalletToWalletBloc,
                      WalletToWalletState>(
                  bloc: _walletToWalletBloc,
                  listener: (context, state) {
                    state.maybeWhen(
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
                              message:
                                  failure.message ?? "main.report_error".tr());
                        }
                      },
                      loadSuccess: (walletToWalletResponseEntities) {
                        if (walletToWalletResponseEntities.dioResponse.code ==
                            200) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                  child: (WalletToWalletResult(
                                    amountTransfer: widget.amountTransfer,
                                    status: "True",
                                    phoneNo: phoneNo,
                                    message: walletToWalletResponseEntities
                                        .dioResponse.message[0],
                                    transferTime: walletToWalletResponseEntities
                                        .walletToWalletResponseData
                                        .transferTime,
                                    transferPersianDate:
                                        walletToWalletResponseEntities
                                            .walletToWalletResponseData
                                            .transferPersianDate,
                                    referenceNumber:
                                        walletToWalletResponseEntities
                                            .walletToWalletResponseData
                                            .referenceNumber,
                                    destinationPhoneNo:
                                        widget.destinationPhoneNo,
                                  )),
                                  type: PageTransitionType.leftToRight),
                              (route) => false);
                        } else {
                          showErrorWidget(
                              context,
                              walletToWalletResponseEntities.dioResponse.code,
                              walletToWalletResponseEntities
                                  .dioResponse.message[0]);
                        }
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    final bool loadingWalletToWallet =
                        state is WalletToWalletStateLoading;
                    return AppButton(
                      buttonType: ButtonType.isFilled,
                      title: "main.confirm".tr(),
                      leftIcon: Magicon.angleLeft,
                      buttonLoading: loadingWalletToWallet,
                      isFilledEnable: otpCode.length == 6 ? true : false,
                      customWidth: double.infinity,
                      customHeight: 48,
                      onPressed: () {
                        _walletToWalletBloc.add(
                          WalletToWalletEvent.walletToWalletEventCalled(
                            WalletToWalletParams(
                              amount: widget.amountTransfer.replaceAll(",", ""),
                              code: otpCode,
                              destinationMobileNumber:
                                  widget.destinationPhoneNo,
                              sourceMobileNumber: phoneNo,
                              sourceWalletId: widget.walletSegmentId,
                              transferTypeId:
                                  "20A0152B-9853-46F4-852F-446D112C569A",
                              note:
                                  " انتقال وجه از کاربر $phoneNo به ${widget.destinationPhoneNo} در تاریخ $date",
                            ),
                          ),
                        );
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
                                destinationPhoneNumber: widget.destinationPhoneNo,
                                otpType: 0,
                                amount: amount)));
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
