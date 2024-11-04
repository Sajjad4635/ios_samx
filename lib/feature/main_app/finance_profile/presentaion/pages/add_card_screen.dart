import 'package:ios_samx/core/base_widget/app_snack_bar/index.dart';
import 'package:ios_samx/core/base_widget/app_text_field/app_text_field.dart';
import 'package:ios_samx/core/base_widget/app_text_field/index.dart';
import 'package:ios_samx/core/base_widget/app_top_app_bar/index.dart';
import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/cad_number_formatter.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/add_card/params/add_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/update_card_title/params/update_card_title_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/add_card/add_card_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/get_card/get_card_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/update_card_title/update_card_title_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/pages/profile_finance_screen.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/base_widget/app_buttons/app_button/index.dart';

class AddCardScreen extends StatefulWidget {
  final String? defaultCardNumber;
  final String? defaultCardName;
  final String? defaultCardId;
  final bool isEditing;

  const AddCardScreen(
      {super.key,
      this.defaultCardNumber,
      this.defaultCardName,
      required this.isEditing,
      this.defaultCardId});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  late AddCardBloc _addCardBloc;
  late GetCardBloc _getCardBloc;
  late UpdateCardTitleBloc _updateCardTitleBloc;
  final TextEditingController cardNumController = TextEditingController();
  final TextEditingController cardNameController = TextEditingController();
  late final focusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();
  String cardNumber = "";
  String bankIcon = "";
  String formattedCardNumber = "";
  String phoneNo = "";
  String birthDate = "";
  int cursorPosition = 0;


  @override
  void initState() {
    super.initState();
    _addCardBloc = sl<AddCardBloc>();
    _getCardBloc = sl<GetCardBloc>();
    _updateCardTitleBloc = sl<UpdateCardTitleBloc>();
    final Box box = Hive.box(Strings.appDBName);
    phoneNo = box.get(Strings.phoneId);
    birthDate = box.get(Strings.birthDate);
    if (widget.isEditing) {
      cardNumController.text =
          Utils.cardDashFormatter(widget.defaultCardNumber ?? "");
      cardNameController.text = widget.defaultCardName ?? "";
    }
  }


  Widget extractBankIcon() {
    if (widget.isEditing) {
      return Container(
        margin: const EdgeInsets.only(right: 10, left: 5),
        height: 25,
        width: 25,
        child: Image.asset(
            fit: BoxFit.fill,
            "assets/images/bank_icons/${Utils.extractIconBankBaseCardNumber(
                widget.defaultCardNumber?.substring(0, 6) ?? "")}.png"),
      );
    } else if (cardNumber.length > 5) {
      return Container(
        margin: const EdgeInsets.only(right: 10, left: 5),
        height: 25,
        width: 25,
        child: Image.asset(
            fit: BoxFit.fill,
            "assets/images/bank_icons/${Utils.extractIconBankBaseCardNumber(
                cardNumber)}.png"),
      );
    } else {
      return const SizedBox(
        height: 15,
        width: 15,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);

    final colorTheme = context.colorTheme<CustomTheme>();
    return BlocProvider(
      create: (context) => _addCardBloc,
      child: SafeArea(
          child: Scaffold(
            backgroundColor: colorTheme.bg,
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(64.0),
              child: AppTopAppBar(
                title: 'main.add_card'.tr(),
                isQrCode: false,
                onPressed: () {
                  widget.isEditing
                      ? Navigator.of(context).pop()
                      : Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const ProfileFinanceScreen(
                            initialTabbarIndex: 1,
                          ),
                          type: PageTransitionType.leftToRight));
                },
              ),
            ),
            body: Form(
                key: _formKey,
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      AppTextField(
                        keyboardType: TextInputType.number,
                        enable: widget.isEditing ? false : true,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.ltr,
                        customWidth: width * 0.9,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (val) {
                          formattedCardNumber =
                              val.replaceAll(RegExp(r"[^\s\w]"), '');
                          bankIcon = Utils.extractIconBankBaseCardNumber(
                              formattedCardNumber);
                          if (formattedCardNumber.length >= 6) {
                            setState(() {
                              cardNumber = formattedCardNumber;
                            });
                          } else if (formattedCardNumber.length < 6) {
                            setState(() {
                              cardNumber = "";
                            });
                          }
                        },
                        prefixIcon: extractBankIcon(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(19),
                          FilteringTextInputFormatter.digitsOnly,
                          CreditCardNumberFormater()
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "main.fill_field_is_required".tr();
                          }
                          if (value.length < 19) {
                            return "main.card_limitaion_error_msg".tr();
                          }
                          return null;
                        },
                        controller: cardNumController,
                        label: 'main.card_number'.tr(),
                        helperText: "main.card_textfield_validation".tr(),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AppTextField(
                        customWidth: width * 0.9,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: cardNameController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                          FilteringTextInputFormatter.deny(
                              RegExp(r'[~`!@#$%^&*(),\.?":{}|<>/]'))
                        ],
                        label: 'main.card_name'.tr(),
                        helperText: "main.fill_field_is_optional".tr(),
                      ),
                      const Spacer(),
                      widget.isEditing
                          ? BlocConsumer<
                          UpdateCardTitleBloc,
                          UpdateCardTitleState>(
                        bloc: _updateCardTitleBloc,
                        listener: (context, state) {
                          state.maybeWhen(
                              loadFailure: (failure) =>
                                  showErrorWidget(
                                      context, failure.code, failure.message!),
                              loadSuccess: (updateCardEntities) {
                                _getCardBloc.add(
                                    GetCardEvent.getCardEventCalled(
                                        noParams: NoParams()));
                                Navigator.of(context).pop();
                                AppSnackBar.showSnackBar(
                                    context: context,
                                    type: SnackBarType.success,
                                    title: 'main.confirm'.tr(),
                                    message:
                                    "main.successfull_edit_card_msg".tr());
                              },
                              orElse: () {});
                        },
                        builder: (context, state) {
                          final loading = state is UpdateCardTitleStateLoading;
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: AppButton(
                              buttonType: ButtonType.isFilled,
                              title: "main.update_card".tr(),
                              buttonLoading: loading,
                              customHeight: 48,
                              customWidth: width * 0.9,
                              onPressed: () {
                                _updateCardTitleBloc.add(UpdateCardTitleEvent
                                    .updateCardTitleEventCalled(
                                    updateCardTitleParam:
                                    UpdateCardTitleParam(
                                        cardId:
                                        widget.defaultCardId ??
                                            "",
                                        title: cardNameController
                                            .text)));
                              },
                            ),
                          );
                        },
                      )
                          : BlocConsumer<AddCardBloc, AddCardState>(
                        bloc: _addCardBloc,
                        listener: (context, state) {
                          state.maybeWhen(
                              loadFailure: (failure) =>
                                  showErrorWidget(
                                      context, failure.code, failure.message!),
                              loadSuccess: (addCardEntities) {
                                Navigator.pushReplacement(
                                    context,
                                    PageTransition(
                                        child: const ProfileFinanceScreen(
                                          initialTabbarIndex: 1,
                                        ),
                                        type:
                                        PageTransitionType.leftToRight));
                                AppSnackBar.showSnackBar(
                                    context: context,
                                    type: SnackBarType.success,
                                    title: 'main.confirm'.tr(),
                                    message: "main.successfull_add_card_msg"
                                        .tr(args: [
                                      (addCardEntities
                                          .addCardResponseData.bankName)
                                    ]));
                              },
                              orElse: () {});
                        },
                        builder: (context, state) {
                          final loading = state is AddCardStateLoading;
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: AppButton(
                              buttonType: ButtonType.isFilled,
                              title: "main.add_card".tr(),
                              buttonLoading: loading,
                              customHeight: 48,
                              customWidth: width * 0.9,
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _addCardBloc.add(
                                      AddCardEvent.addCardEventCalled(
                                          addCardParam: AddCardParam(
                                              birthDate: birthDate,
                                              pan: formattedCardNumber,
                                              phoneNumber: phoneNo,
                                              title:
                                              cardNameController.text)));
                                }
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )),
          )),
    );
  }
}
