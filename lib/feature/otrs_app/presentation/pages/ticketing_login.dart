import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticket_form.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/text_form_field.dart';
import 'package:ios_samx/feature/otrs_app/presentation/bloc/login/ticketing_login_bloc.dart';
import 'package:ios_samx/feature/otrs_app/presentation/pages/ticketing_list.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:page_transition/page_transition.dart';
import '../../../main_app/dashboard/presentation/pages/dashboard_screen.dart';
import '../../domain/usecase/login/params/ticketing_login_params.dart';

class TicketingLoginScreen extends StatefulWidget {
  const TicketingLoginScreen({super.key});

  @override
  State<TicketingLoginScreen> createState() => _TicketingLoginState();
}

class _TicketingLoginState extends State<TicketingLoginScreen> {
  late TicketingLoginBloc _ticketingLoginBloc;
  final TextEditingController controllerUserLogin = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final Box box = Hive.box(Strings.appDBName);
  late final String where ;

  @override
  void initState() {
    where = box.get("otrsAfterLogin");
    _ticketingLoginBloc = sl<TicketingLoginBloc>();
    super.initState();
  }

  String sessionID = "";
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);
    final double height = MediaQuery.of(context).size.height;

    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pushAndRemoveUntil(
              PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight), (route) => false);
          return false;
        },
        child: Scaffold(
          backgroundColor: colorTheme.bg,
          appBar: AppBar(
            backgroundColor: colorTheme.bgInverse,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'otrs.support_title'.tr(),
              style: AppStyle.size18Weight700,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageTransition(child: const DashboardScreen(), type: PageTransitionType.leftToRight),
                    (route) => false);
              },
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: colorTheme.layer,
                ),
              ),
            ),
          ),
          body: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => _ticketingLoginBloc,
              ),
            ],
            child: Form(
              key: _formKey,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        width: width * 0.9,
                        child: Text(
                          "otrs.password_label".tr(),
                          style: AppStyle.size16Weight500,
                        ),
                      ),
                      CustomTextFormField(
                        controller: controllerPassword,
                        errorMessage: "",
                        isHidden: isHidden,
                        maxLength: 16,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "otrs.insert_your_password".tr();
                          }
                          return null;
                        },
                        hint: "otrs.password_hint".tr(),
                        customWidth: width * 0.9,
                        prefix: IconButton(
                            onPressed: () {
                              setState(() {
                                isHidden = !isHidden;
                              });
                            },
                            icon: isHidden ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)),
                      ),
                      SizedBox(
                        height: height * 0.08,
                      ),
                      BlocConsumer<TicketingLoginBloc, TicketingLoginState>(
                        bloc: _ticketingLoginBloc,
                        listener: (context, state) => state.maybeWhen(
                          loadFailure: (error) {
                            // showErrorWidget(context, error.code!, error.message!);
                            String? errorMessage =
                                error.message!.toString().contains("Authorization failing") || error.code == 403
                                    ? "otrs.incorrect_password".tr()
                                    : error.message;
                            showErrorWidget(context, error.code!, errorMessage!);
                            return null;
                          },
                          loadSuccess: (response) {
                            sessionID = response.loginResponseData.sessionID;
                            box.put("sessionID", sessionID);
                            String? username = box.get("username");

                            if(where == Strings.otrsListTicket){
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: TicketingListScreen(sessionID: sessionID, userLogin: username!,),
                                  type: PageTransitionType.leftToRight,
                                ),
                              );

                            }else if (where ==  Strings.otrsNewTicket){
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: NewTicketFormScreen( sessionID:sessionID ,customerUser: username! ,),
                                  type: PageTransitionType.leftToRight,
                                ),
                              );
                            }
                            return null;
                          },
                          orElse: () {
                            return null;
                          },
                        ),
                        builder: (context, state) {
                          final buttonLoading = state is TicketingLoginLoading;
                          return ButtonPrimary(
                            title: "otrs.login_button".tr(),
                            customHeight: 48,
                            customWidth: width * 0.9,
                            buttonLoading: buttonLoading,
                            onPressed: () {
                              setState(() {
                                if (_formKey.currentState!.validate()) {
                                  final Box box = Hive.box(Strings.appDBName);
                                  final String username = box.get("username");
                                  _ticketingLoginBloc = sl<TicketingLoginBloc>();
                                  _ticketingLoginBloc.add(
                                    TicketingLoginEvent.ticketingLoginEventCalled(
                                      TicketingLoginParams(
                                        CustomerUserLogin: username,
                                        Password: controllerPassword.text,
                                      ),
                                    ),
                                  );
                                }
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
