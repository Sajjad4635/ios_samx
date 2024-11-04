import 'package:ios_samx/core/base_widget/index.dart' show AppButton, ButtonType;
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/feature/cplife_app/loan/presentation/bloc/iban_inquiry/iban_inquiry_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/pages/profile_finance_screen.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/pages/profile_finance_iban_confirm_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../../core/base_widget/app_text_field/app_text_field.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/ball_beat_progress_indicator.dart';
import '../../../../../injection_container.dart';
import '../../../../cplife_app/loan/domain/usecase/iban_inquiry/params/iban_inquiry_param.dart';

class ProfileFinanceIbanScreen extends StatefulWidget {
  const ProfileFinanceIbanScreen({super.key});

  @override
  State<ProfileFinanceIbanScreen> createState() => _ProfileFinanceIbanScreenState();
}

class _ProfileFinanceIbanScreenState extends State<ProfileFinanceIbanScreen> {
  final TextEditingController cntIban = TextEditingController();
  String iban = "";
  late IbanInquiryBloc _ibanInquiryBloc;

  @override
  void initState() {
    super.initState();
    _ibanInquiryBloc = sl<IbanInquiryBloc>();
  }

  @override
  void dispose() {
    cntIban.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colorTheme.bg,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(64.0),
          child: AppTopAppBar(
            title: 'main.financial_profile'.tr(),
            isQrCode: false,
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: const ProfileFinanceScreen(),
                      type: PageTransitionType.leftToRight));
            },
          ),
        ),
        body: BlocProvider(
            create: (context) => _ibanInquiryBloc,
            child: BlocListener<IbanInquiryBloc, IbanInquiryState>(
              bloc: _ibanInquiryBloc,
              listener: (context, state) {
                state.maybeWhen(
                  loadFailure: (error) {
                    showErrorWidget(context, error.code!, error.message!);
                  },
                  loadSuccess: (ibanInquiryResponseEntities) {
                    if (ibanInquiryResponseEntities
                            .ibanInquiryResponseData.status ==
                        "Active") {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: ProfileFinanceIbanConfirmScreen(
                                ibanNo: ibanInquiryResponseEntities
                                    .ibanInquiryResponseData.accountNumber,
                                bankName: ibanInquiryResponseEntities
                                    .ibanInquiryResponseData.bank,
                              ),
                              type: PageTransitionType.leftToRight));
                    } else {}
                  },
                  orElse: () {},
                );
              },
              child: Align(
                child: SizedBox(
                  width: width * 0.9,
                  height: height * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 80,
                        child: AppTextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          prefixIcon: cntIban.text.isNotEmpty && cntIban.text.length > 4 ? Container(
                            margin: const EdgeInsets.only(right: 10, left: 5),
                            height: 25,
                            width: 25,
                            child: Image.asset(
                                fit: BoxFit.fill,
                                "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(cntIban.text.substring(2,5))}.png"),
                          ) :  const SizedBox(
                            height: 15,
                            width: 15,
                          ),
                          keyboardType: TextInputType.number,
                          customWidth: width * 0.9,
                          errorMessage: "main.enter_your_iban".tr(),
                          label: 'main.user_iban'.tr(),
                          maxLength: 24,
                          controller: cntIban,
                          hintText: "main.user_iban".tr(),
                          isIban: true,
                          onChanged: (value) {
                            setState(() => value.length == 24
                                ? iban = value
                                : iban = "");
                          },
                        ),
                      ),
                      Text("main.enter_your_iban".tr() , style:  TextTypography.labelMedium.copyWith(color: colorTheme.textVariant),) ,
                      const Spacer(),
                      BlocBuilder<IbanInquiryBloc, IbanInquiryState>(
                        bloc: _ibanInquiryBloc,
                        builder: (context, state) {
                          final bool loading =
                              state is IbanInquiryStateLoading;
                          return loading
                              ? BallBeatProgressIndicator(
                                  size: width * 0.09,
                                  color: colorTheme.primary,
                                )
                              : AppButton(
                                  buttonType: ButtonType.isFilled,
                                  isFilledEnable:
                                      iban.length == 24 ? true : false,
                                  title: "main.confirm_continue".tr(),
                                  customHeight: 48,
                                  customWidth: width * 0.9,
                                  onPressed: () {
                                    _ibanInquiryBloc.add(IbanInquiryEvent
                                        .ibanInquiryEventCalled(
                                            IbanInquiryParam(
                                                ibanNumber: cntIban.text)));
                                  },
                                );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
