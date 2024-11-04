import 'dart:convert';
import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/count_down_time.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/bloc/get_profile/get_profile_bloc.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login_otp/params/login_otp_params.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/bloc/login_otp/login_otp_bloc.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/pages/register/sso_register_activation_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:pinput/pinput.dart';

import '../../../domain/usecase/login/params/login_params.dart';
import '../../bloc/login/login_bloc.dart';

class SsoLoginOtpScreen extends StatefulWidget {
  final String phoneNumber;
  final String nationalCode;

  const SsoLoginOtpScreen({
    super.key,
    required this.phoneNumber,
    required this.nationalCode,
  });

  @override
  State<SsoLoginOtpScreen> createState() => _SsoOtpScreenState();
}

class _SsoOtpScreenState extends State<SsoLoginOtpScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  int second = 120;

  bool? isError;

  final defaultPinTheme = PinTheme(
    width: 70,
    height: 48,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    margin: const EdgeInsets.only(right: 16),
    decoration: BoxDecoration(
      color: AppColors.fillColor,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.white),
    ),
  );

  final errorPinTheme = PinTheme(
    width: 70,
    height: 48,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    margin: const EdgeInsets.only(right: 16),
    decoration: BoxDecoration(
      color: AppColors.fillColor,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: AppColors.error, width: 1),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 70,
    height: 48,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    margin: const EdgeInsets.only(right: 16),
    decoration: BoxDecoration(
      color: AppColors.fillColor,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: AppColors.primary, width: 1),
    ),
  );

  late LoginOtpBloc _loginOtpBloc;
  late LoginBloc _loginBloc;
  late GetProfileBloc _getProfileBloc;

  late bool _visible;

  late bool _visibleTimer;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _loginOtpBloc = sl<LoginOtpBloc>();
    _loginBloc = sl<LoginBloc>();
    _getProfileBloc = sl<GetProfileBloc>();

    _visible = false;
    _visibleTimer = true;
    super.initState();
  }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  //! TODO : this file was made persist on last sysytem design
  //! first change system design to change colors of this file
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);

    final colorTheme = context.colorTheme<CustomTheme>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _loginOtpBloc,
        ),
        BlocProvider(
          create: (context) => _getProfileBloc,
        ),
      ],
      child: BlocListener<GetProfileBloc, GetProfileState>(
        bloc: _getProfileBloc,
        listener: (context, state) {
          state.maybeWhen(
              loadFailure: (failure) {
                showErrorWidget(context, failure.code, failure.message!);
              },
              loadSuccess: (getProfileEntities) {
                final Box box = Hive.box(Strings.appDBName);
                box.put(Strings.nationalId,
                    getProfileEntities.getProfileResponseData.nationalCode!);
                box.put(Strings.phoneId,
                    getProfileEntities.getProfileResponseData.phoneNumber!);
                box.put(Strings.birthDate,
                    getProfileEntities.getProfileResponseData.birthDate!);
                box.put(Strings.staffUserName,
                    getProfileEntities.getProfileResponseData.staffUsername);

                Navigator.of(context).pushAndRemoveUntil(
                    PageTransition(
                        child: const DashboardScreen(),
                        type: PageTransitionType.leftToRight),
                    (route) => false);
              },
              orElse: () {});
        },
        child: SingleChildScrollView(
          child: Container(
            color: colorTheme.bg,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    alignment: Alignment.center,
                    width: width * 0.4,
                    child: Image(
                      height: height * 0.15,
                      image: const AssetImage("assets/images/otp.png"),
                    ),
                  ),
                  Text(
                    "main.one_time_code_sent_to".tr(),
                    style: AppStyle.size14Weight400
                        .copyWith(color: colorTheme.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.phoneNumber.toPersianDigit(),
                    style: AppStyle.size14Weight600,
                    textDirection: TextDirection.ltr,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Text(
                    "main.one_time_code".tr(),
                    style: AppStyle.size14Weight600
                        .copyWith(color: colorTheme.black),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: width * 0.9,
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Pinput(
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsRetrieverApi,
                        length: 5,
                        controller: pinController,
                        focusNode: focusNode,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        errorPinTheme: errorPinTheme,
                        listenForMultipleSmsOnAndroid: true,
                        separatorBuilder: (index) => const SizedBox(width: 0.5),
                        /* validator: (value) {
                            return value == null ? '' : '';
                          },*/
                        onChanged: (value) {},
                        onCompleted: (pin) {
                          if (_visibleTimer) {
                            _loginOtpBloc.add(
                              LoginOtpEvent.loginEventCalled(
                                LoginOtpParams(
                                  otp: pinController.text,
                                  nationalCode: widget.nationalCode,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocConsumer<LoginBloc, LoginState>(
                    bloc: _loginBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        loadFailure: (failure) {
                          if (failure.code == 530) {
                          } else {
                            showErrorWidget(
                                context, failure.code, failure.message!);
                          }
                        },
                        loadSuccess: (loginEntities) {
                          setState(() {
                            _visibleTimer = true;
                            _visible = false;
                          });
                        },
                        orElse: () {},
                      );
                    },
                    builder: (BuildContext context, state) {
                      return Container(
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
                                  _loginBloc.add(
                                      LoginEvent.loginEventCalled(LoginParams(
                                    nationalCode: widget.nationalCode.toString(),
                                  )));
                                },
                                child: Text(
                                  "main.resend_code".tr(),
                                  style: AppStyle.size13Weight600primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  isError == null
                      ? Container()
                      : isError == true
                          ? SizedBox(
                              width: width * 0.9,
                              child: Row(
                                children: [
                                  const Icon(
                                    Magicon.infoCircle,
                                    color: AppColors.error,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      "main.incorrect_one_time_code".tr(),
                                      style: AppStyle.size12Weight500
                                          .copyWith(color: AppColors.error),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              height: 40,
                              width: 110,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(color: AppColors.success),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline,
                                    color: AppColors.success,
                                  ),
                                  Text(
                                    "main.successful_entry".tr(),
                                    style: AppStyle.size12Weight500
                                        .copyWith(color: AppColors.success),
                                  ),
                                ],
                              ),
                            ),
                  const SizedBox(height: 42),
                  BlocConsumer<LoginOtpBloc, LoginOtpState>(
                    bloc: _loginOtpBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        loadFailure: (failure) {
                          setState(() {
                            isError = true;
                          });
                        },
                        loadSuccess: (loginOtpEntities) {
                          Map<String, dynamic> jsonMap = parseJwtPayLoad(
                              loginOtpEntities.loginOtpResponseData.accessToken);
                          final Box box = Hive.box(Strings.appDBName);
                          box.put(Strings.authorization,
                              loginOtpEntities.loginOtpResponseData.accessToken);
              
                          if (jsonMap["IsActive"] == "false") {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              PageTransition(
                                child: SsoRegisterActivationScreen(
                                  nationalCode: widget.nationalCode,
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          } else {
                            box.put(Strings.nationalId,
                                jsonMap["preferred_username"]);
              
                            box.put("expireIn",
                                loginOtpEntities.loginOtpResponseData.expireIn);
              
                            box.put("given_name", jsonMap["given_name"]);
                            box.put("family_name", jsonMap["family_name"]);
              
                            box.put("showAds", "showAds");
                            DateTime currentTime = DateTime.now();
                            DateTime expirationDateTime = currentTime.add(
                                Duration(
                                    seconds: loginOtpEntities
                                        .loginOtpResponseData.expireIn));
                            box.put("expire_date_time", expirationDateTime);
                            _getProfileBloc.add(
                                GetProfileEvent.getProfileEventCalled(
                                    noParams: NoParams()));
                          }
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      final bool loading = state is LoginOtpStateLoading;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ButtonPrimary(
                          title: "main.confirm_and_continue".tr(),
                          buttonLoading: loading,
                          customWidth: width * 0.9,
                          customHeight: 48,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (_visibleTimer && pinController.length == 5) {
                                _loginOtpBloc.add(
                                  LoginOtpEvent.loginEventCalled(
                                    LoginOtpParams(
                                      otp: pinController.text,
                                      nationalCode: widget.nationalCode,
                                    ),
                                  ),
                                );
                              }
                            }
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> parseJwtPayLoad(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }

    return payloadMap;
  }

  String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }
}
