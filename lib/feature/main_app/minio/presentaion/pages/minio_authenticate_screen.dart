import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/feature/main_app/minio/domain/usecase/authenticate/param/authenticate_param.dart';
import 'package:ios_samx/feature/main_app/minio/presentaion/bloc/authenticate/authenticate_bloc.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ios_samx/core/base_widget/index.dart' show AppButton, AppTextField, AppTopAppBar, ButtonType;

import 'minio_bucket_screen.dart';

class MinioAuthenticateScreen extends StatefulWidget {
  const MinioAuthenticateScreen({super.key});

  @override
  State<MinioAuthenticateScreen> createState() => _MinioAuthState();
}

class _MinioAuthState extends State<MinioAuthenticateScreen> {
  final TextEditingController cntPw = TextEditingController();

  late AuthenticateBloc _authenticateBloc;

  Box box = Hive.box(Strings.appDBName);
  final _formKey = GlobalKey<FormState>();

  bool isHidden = true;
  bool isPassWord = true;
  String staffUserName = "";

  @override
  void initState() {
    _authenticateBloc = sl<AuthenticateBloc>();
    staffUserName = box.get(Strings.staffUserName);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = ResponsiveLayout.getDeviceType(context);
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.colorTheme<CustomTheme>().bg,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: AppTopAppBar(
          title: 'main.drive'.tr(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.35,
                  ),
                  SizedBox(
                    height: 90,
                    child: AppTextField(
                      customWidth: width * 0.9,
                      maxLength: 16,
                      isPassword: true,
                      controller: cntPw,
                      label: "main.password_hint".tr(),
                      obscureText: isHidden,
                      onPressedPassWord: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          value = cntPw.text;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * 0.35,
                  ),
                  BlocConsumer<AuthenticateBloc, AuthenticateBlocState>(
                    bloc: _authenticateBloc,
                    listener: (context, state) {
                      state.maybeWhen(
                        loadFailure: (error) {
                          showErrorWidget(context, 0, error.message.toString());
                        },
                        loadSuccess: (response) {
                          if (response.dioResponseSamX.code == "400") {
                            showErrorWidget(context, 0, response.dioResponseSamX.message);
                          } else {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: MinioBucketScreen(
                                  accessKeyId: response.authenticateResponseData.accessKeyId,
                                  secretAccessKey: response.authenticateResponseData.secretAccessKey,
                                  sessionToken: response.authenticateResponseData.sessionToken,
                                ),
                                type: PageTransitionType.leftToRight,
                              ),
                            );
                          }
                          return null;
                        },
                        orElse: () {
                          return null;
                        },
                      );
                    },
                    builder: (context, state) {
                      final buttonLoading = state is AuthenticateBlocStateLoading;
                      return AppButton(
                        customHeight: 40,
                        customWidth: width * 0.9,
                        title: "main.login_button".tr(),
                        buttonLoading: buttonLoading,
                        onPressed: () {
                          if (staffUserName.toString().isNotEmpty && cntPw.text.isNotEmpty) {
                            _authenticateBloc.add(
                              AuthenticateBlocEvent.authBlocEventCalled(
                                AuthenticateParam(username: staffUserName, password: cntPw.text),
                              ),
                            );
                          }
                        },
                        buttonType: ButtonType.isFilled,
                        isFilledEnable: cntPw.text.isNotEmpty ? true : false,
                        isSecondaryEnable: false,
                        rightIcon: Magicon.logIn,
                        leftIcon: null,
                      );
                    },
                  ),
                  SizedBox(
                    height: height * 0.02,
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
