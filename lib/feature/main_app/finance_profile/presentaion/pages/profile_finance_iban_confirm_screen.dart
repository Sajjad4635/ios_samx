import 'package:ios_samx/core/base_widget/index.dart' show AppButton, ButtonType;
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/post_account/params/post_account_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/pages/profile_finance_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/base_widget/app_top_app_bar/app_top_app_bar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/widgets/alert_dialog.dart';
import '../../../../../core/widgets/ball_beat_progress_indicator.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';
import '../../../../../injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import '../bloc/post_account/post_account_bloc.dart';

class ProfileFinanceIbanConfirmScreen extends StatefulWidget {
  final String ibanNo;
  final String bankName;

  const ProfileFinanceIbanConfirmScreen(
      {super.key, required this.ibanNo, required this.bankName});

  @override
  State<ProfileFinanceIbanConfirmScreen> createState() =>
      _ProfileFinanceIbanConfirmScreenState();
}

class _ProfileFinanceIbanConfirmScreenState extends State<ProfileFinanceIbanConfirmScreen> {
  late PostAccountBloc _postAccountBloc;
  late bool isDefault = false;

  @override
  void initState() {
    super.initState();
    _postAccountBloc = sl<PostAccountBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();

    return SafeArea(
      child: Scaffold(
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
        body: BlocListener<PostAccountBloc, PostAccountState>(
          bloc: _postAccountBloc,
          listener: (context, state) {
            state.maybeWhen(
              loadFailure: (error) {
                showErrorWidget(context, error.code!, error.message!);
              },
              loadSuccess: (postAccountEntities) {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const ProfileFinanceScreen(),
                        type: PageTransitionType.leftToRight));
              },
              orElse: () {},
            );
          },
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: width,
              height: height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        'main.confirm_your_iban'.tr(),
                        style: (TextTypography.titleMedium
                            .copyWith(color: colorTheme.black)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  SimpleRoundedContainer(
                    padding: 10,
                    width: width,
                    height: height * 0.10,
                    bgColor: colorTheme.layer,
                    borderRadius: 8.0,
                    borderColor: colorTheme.borders,
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 8.0, top: 8.0, end: 8.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: colorTheme.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    100,
                                  ),
                                )),
                            child: Image(
                              width: 32,
                              image: AssetImage(
                                "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(widget.ibanNo.substring(4,7))}.png",
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                  "${'main.bank_name'.tr()} ${widget.bankName}",
                                  style: TextTypography.labelMedium
                                      .copyWith(color: colorTheme.text)),
                            ),
                            Text( "IR - ${widget.ibanNo.toString().toPersianDigit().replaceAll(RegExp('IR'),'')}",
                              textDirection: TextDirection.ltr,
                              style: TextTypography.labelMedium
                                    .copyWith(color: colorTheme.text) ,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1,
                        child: Checkbox(
                          checkColor: AppColors.primary,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          side: const BorderSide(
                            color: AppColors.primary,
                          ),
                          value: isDefault,
                          onChanged: (bool? value) {
                            setState(() {
                              isDefault = value!;
                            });
                          },
                        ),
                      ),
                      Text('main.set_as_default_acc_iban'.tr(),
                          style: TextTypography.labelMedium
                              .copyWith(color: colorTheme.text)),
                    ],
                  ),
                  const Spacer(),
                  BlocBuilder<PostAccountBloc, PostAccountState>(
                    bloc: _postAccountBloc,
                    builder: (context, state) {
                      return state is PostAccountStateLoading
                          ? BallBeatProgressIndicator(
                              size: width * 0.09,
                              color: colorTheme.primary,
                            )
                          : AppButton(
                              buttonType: ButtonType.isFilled,
                              title: "main.confirm_continue".tr(),
                              customHeight: 48,
                              customWidth: width * 0.9,
                              onPressed: () {
                                _postAccountBloc.add(
                                    PostAccountEvent.postAccountEventCalled(
                                        postAccountParam: PostAccountParam(
                                            isDefault: isDefault,
                                            iban: widget.ibanNo)));
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
        ),
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.white;
  }
}
