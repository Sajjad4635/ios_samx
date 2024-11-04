import 'dart:convert';
import 'package:ios_samx/core/constant/app_colors.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/extensions/convert_date.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/count_down_time.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/bloc/get_profile/get_profile_bloc.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/profile_activation/param/get_profile_activation_param.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up/params/sign_up_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up_otp/params/sign_up_otp_params.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/bloc/profile_activation/profile_activation_bloc.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/bloc/sign_up/sign_up_bloc.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/bloc/sign_up_otp/sign_up_otp_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:pinput/pinput.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;

class SsoRegisterActivationOtpScreen extends StatefulWidget {
  final String phoneNumber;
  final String nationalCode;
  final String selectedDay;
  final String selectedMonth;
  final String selectedYear;

  const SsoRegisterActivationOtpScreen({
    super.key,
    required this.phoneNumber,
    required this.nationalCode,
    required this.selectedDay,
    required this.selectedMonth,
    required this.selectedYear,
  });

  @override
  State<SsoRegisterActivationOtpScreen> createState() =>
      _SsoRegisterOtpScreenState();
}

class _SsoRegisterOtpScreenState extends State<SsoRegisterActivationOtpScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  int second = 120;

  bool? isError;
  bool isActiveResendCode = false;

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

  late SignUpOtpBloc _signUpOtpBloc;
  late SignUpBloc _signUpBloc;

  late GetProfileActivationBloc _getProfileActivationBloc;
  late GetProfileBloc _getProfileBloc;

  String errorMessage = "";
  @override
  void initState() {
    _signUpOtpBloc = sl<SignUpOtpBloc>();
    _signUpBloc = sl<SignUpBloc>();
    _getProfileActivationBloc = sl<GetProfileActivationBloc>();
    _getProfileBloc = sl<GetProfileBloc>();
    super.initState();
  }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _getProfileActivationBloc,
        ),
        BlocProvider(
          create: (context) => _getProfileBloc,
        ),
        BlocProvider(
          create: (context) => _signUpOtpBloc,
        ),
        BlocProvider(
          create: (context) => _signUpBloc,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<GetProfileActivationBloc, GetProfileActivationState>(
            bloc: _getProfileActivationBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  showErrorWidget(context, failure.code, failure.message!);
                },
                loadSuccess: (getProfileActivationEntities) {
                  final Box box = Hive.box(Strings.appDBName);
                  Map<String, dynamic> jsonMap = parseJwtPayLoad(
                      getProfileActivationEntities.dataRecords.accessToken);

                  box.put(Strings.authorization,
                      getProfileActivationEntities.dataRecords.accessToken);

                  box.put(Strings.nationalId, jsonMap["preferred_username"]);

                  box.put("expireIn",
                      getProfileActivationEntities.dataRecords.expiresIn);

                  box.put("given_name", jsonMap["given_name"]);
                  box.put("family_name", jsonMap["family_name"]);

                  box.put("showAds", "showAds");
                  DateTime currentTime = DateTime.now();
                  DateTime expirationDateTime = currentTime.add(Duration(
                      seconds:
                          getProfileActivationEntities.dataRecords.expiresIn));
                  box.put("expire_date_time", expirationDateTime);

                  _getProfileBloc.add(GetProfileEvent.getProfileEventCalled(
                      noParams: NoParams()));
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<GetProfileBloc, GetProfileState>(
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
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          child: const DashboardScreen(),
                          type: PageTransitionType.leftToRight),
                      (route) => false);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Container(
          color: colorTheme.bg,
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.08,
                      bottom: height * 0.08,
                    ),
                    alignment: Alignment.center,
                    width: width * 0.4,
                    child: Image(
                      height: height * 0.15,
                      image: const AssetImage("assets/images/otp.png"),
                    ),
                  ),
                  Text(
                    "main.one_time_code_sent_to".tr(),
                    style: AppStyle.size14Weight400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.phoneNumber.toPersianDigit(),
                    style: AppStyle.size14Weight600,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Text(
                    "main.one_time_code".tr(),
                    style: AppStyle.size14Weight600,
                  ),
                  const SizedBox(height: 12),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: SizedBox(
                      width: width * 0.9,
                      child: Pinput(
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsRetrieverApi,
                        length: 5,
                        controller: pinController,
                        focusNode: focusNode,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        errorPinTheme: errorPinTheme,
                        // AndroidSmsAutofillMethod.smsUserConsentApi,
                        listenForMultipleSmsOnAndroid: true,
                        separatorBuilder: (index) => const SizedBox(width: 0.5),

                        onChanged: (value) {
                          debugPrint('onChanged: //');
                        },
                        onCompleted: (pin) {
                          if (isActiveResendCode == false && pin.length == 5) {
                            _signUpOtpBloc.add(
                              SignUpOtpEvent.signUpOtpEventCalled(
                                SignUpOtpParams(
                                    otp: pinController.text,
                                    nationalCode: widget.nationalCode),
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
                  isActiveResendCode
                      ? BlocConsumer<SignUpBloc, SignUpState>(
                          bloc: _signUpBloc,
                          listener: (context, state) {
                            state.maybeWhen(
                              loadFailure: (failure) {
                                showErrorWidget(
                                    context, failure.code, failure.message!);
                              },
                              loadSuccess: (signUpEntities) {
                                setState(() {
                                  second = 120;
                                  isActiveResendCode = false;
                                });
                              },
                              orElse: () {},
                            );
                          },
                          builder: (context, state) {
                            return TextButton(
                              onPressed: () {
                                _signUpBloc.add(SignUpEvent.signUpEventCalled(
                                    SignUpParams(
                                        nationalCode: widget.nationalCode,
                                        phoneNumber: widget.phoneNumber)));
                              },
                              child: Text(
                                "main.resend_code".tr(),
                                style: AppStyle.size10Weight600primary,
                              ),
                            );
                          },
                        )
                      : Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: height * 0.07,
                          child: CountdownTimerWidget(
                            second: second,
                            secondCallback: (value) {
                              second = value;
                              if (second == 0) {
                                setState(() {
                                  isActiveResendCode = true;
                                });
                              }
                            },
                          ),
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
                                    Icons.info,
                                    color: AppColors.error,
                                  ),
                                  Text(
                                    errorMessage,
                                    style: AppStyle.size12Weight500
                                        .copyWith(color: AppColors.error),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                  BlocConsumer<SignUpOtpBloc, SignUpOtpState>(
                    bloc: _signUpOtpBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        loadFailure: (failure) {
                          showErrorWidget(
                              context, failure.code, failure.message!);
                          setState(() {
                            isError = true;
                          });
                        },
                        loadSuccess: (signUpOtpEntities) {
                          final Box box = Hive.box(Strings.appDBName);
                          box.put(
                              Strings.authorization,
                              signUpOtpEntities
                                  .signUpOtpResponseData.accessToken);

                          _getProfileActivationBloc.add(
                            GetProfileActivationEvent
                                .getGetProfileActivationEventCalled(
                              param: GetProfileActivationParam(
                                birthDate: ConvertDate()
                                    .convertJalaliToGregorianTwoNumber(
                                  widget.selectedYear,
                                  widget.selectedMonth,
                                  widget.selectedDay,
                                ),
                              ),
                            ),
                          );
                        },
                        orElse: () {},
                      );
                    },
                    builder: (_, state) => SizedBox(
                      width: width * .9,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: ButtonPrimary(
                          title: "main.confirm_and_continue".tr(),
                          buttonLoading: state is SignUpOtpStateLoading ||
                              _getProfileActivationBloc.state
                                  is GetProfileActivationStateLoading ||
                              _getProfileBloc.state
                                  is GetUserProfileStateLoading,
                          customWidth: width * 0.9,
                          customHeight: 48,
                          onPressed: () async {
                            if (isActiveResendCode == false &&
                                pinController.length == 5) {
                              _signUpOtpBloc.add(
                                SignUpOtpEvent.signUpOtpEventCalled(
                                  SignUpOtpParams(
                                      otp: pinController.text,
                                      nationalCode: widget.nationalCode),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
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
