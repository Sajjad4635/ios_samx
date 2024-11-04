import 'package:ios_samx/core/base_widget/app_bottom_sheet/index.dart'
    show showAppBottomSheet;
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login/params/login_params.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/bloc/login/login_bloc.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/pages/login/sso_login_otp_screen.dart';
import 'package:ios_samx/feature/main_app/sso/presentation/pages/register/sso_register_activation_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

class SsoAuthScreen extends StatefulWidget {
  const SsoAuthScreen({super.key});

  @override
  State<SsoAuthScreen> createState() => _SsoAuthScreenState();
}

class _SsoAuthScreenState extends State<SsoAuthScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nationalController = TextEditingController();
  late LoginBloc _loginBloc;

  @override
  void initState() {
    _loginBloc = sl<LoginBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    return BlocProvider(
      create: (context) => _loginBloc,
      child: PopScope(
        canPop: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.infinity,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/bg_login.png'),
                          ),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: width * .9,
                            child: Column(
                              children: [
                                const SizedBox(height: 24),
                                const Image(
                                  image: AssetImage(
                                      "assets/images/complete_logo.png"),
                                  height: 40,
                                  width: 100,
                                ),
                                const SizedBox(height: 24),
                                const Text(
                                  "ورود به برنامه",
                                  style: TextTypography.titleMedium,
                                ),
                                const SizedBox(height: 42),
                                SizedBox(
                                  width: width * 0.9,
                                  child: Text(
                                    "auth.national_id_login".tr(),
                                    style: AppStyle.size14Weight400,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                CustomTextFormField(
                                  controller: nationalController,
                                  errorMessage: '',
                                  maxLength: 10,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "auth.national_code_required".tr();
                                    }
                                    if (!Utils.nationalCodeValidator(
                                        natCode: value)) {
                                      return "auth.wrong_national_code".tr();
                                    }
                                    return null;
                                  },
                                  // customWidth: width * 0.9,
                                  keyboardType: TextInputType.number,
                                  title: "auth.code".tr(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: BlocConsumer<LoginBloc, LoginState>(
                          bloc: _loginBloc,
                          listener: (context, state) {
                            state.maybeWhen(
                              loadFailure: (failure) {
                                if (failure.code == 100) {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: SsoRegisterActivationScreen(
                                        nationalCode: nationalController.text,
                                      ),
                                      type: PageTransitionType.leftToRight,
                                    ),
                                  );
                                } else {
                                  showErrorWidget(
                                      context, failure.code, failure.message!);
                                }
                              },
                              loadSuccess: (loginEntities) {
                                showAppBottomSheet(
                                  context: context,
                                  child: SsoLoginOtpScreen(
                                    nationalCode: nationalController.text,
                                    phoneNumber: loginEntities
                                        .loginResponseData.phoneNumber,
                                  ),
                                );
                              },
                              orElse: () {},
                            );
                          },
                          builder: (context, state) => Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ButtonPrimary(
                                title: "auth.approve".tr(),
                                buttonLoading: state is LoginStateLoading,
                                customWidth: width * 0.9,
                                customHeight: 48,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _loginBloc.add(
                                      LoginEvent.loginEventCalled(
                                        LoginParams(
                                            nationalCode:
                                                nationalController.text),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
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
