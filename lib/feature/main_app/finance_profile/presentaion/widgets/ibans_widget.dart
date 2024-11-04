import 'package:ios_samx/core/base_widget/app_switch/index.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/simple_rounded_container.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_account/get_account_response_data/get_account_response_data.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/account_default/params/account_default_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/account_enable/params/account_enable_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/account_default/account_default_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/account_enable/account_enable_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/get_account/get_account_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/widgets/empty_list_widget.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/widgets/loading_list.dart';
import 'package:ios_samx/feature/main_app/profile/presentaion/widgets/profile_iban_bottom_sheet.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class IbansWidget extends StatefulWidget {
  final List<GetAccountResponseData> getAccountResponseData;

  final AccountEnableBloc accountEnableBloc;
  final AccountDefaultBloc accountDefaultBloc;
  final GetAccountBloc getAccountBloc;

  const IbansWidget(
      {super.key,
      required this.getAccountResponseData,
      required this.accountDefaultBloc,
      required this.accountEnableBloc,
      required this.getAccountBloc});

  @override
  State<IbansWidget> createState() => _IbansWidgetState();
}

class _IbansWidgetState extends State<IbansWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return BlocBuilder<GetAccountBloc, GetAccountState>(
      bloc: widget.getAccountBloc,
      builder: (context, state) {
        final isLoading = state is GetAccountStateLoading;
        return Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: width,
              child: isLoading
                  ? const LoadingList()
                  : CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: widget.getAccountResponseData.isEmpty
                                ? 0
                                : height * 0.03,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: widget.getAccountResponseData.isEmpty
                                ? const SizedBox.shrink()
                                : Text(
                                    'main.connected_ibans'.tr(),
                                    style: (TextTypography.titleMedium
                                        .copyWith(color: colorTheme.black)),
                                  ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: height * 0.03,
                          ),
                        ),
                        widget.getAccountResponseData.isEmpty
                            ? const SliverToBoxAdapter(
                                child: Center(
                                child: EmptyListWidget(
                                  isCard: false,
                                ),
                              ))
                            : SliverList.separated(
                                itemCount: widget.getAccountResponseData.length,
                                itemBuilder: (context, index) {
                                  return SimpleRoundedContainer(
                                    padding: 10,
                                    width: width * 0.7,
                                    height: height * 0.15,
                                    bgColor: colorTheme.layer,
                                    borderRadius: 8.0,
                                    borderColor: colorTheme.borders,
                                    widget: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .only(
                                                      start: 8.0,
                                                      top: 8.0,
                                                      end: 8.0),
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                padding:
                                                    const EdgeInsets.all(6),
                                                decoration: BoxDecoration(
                                                    color: colorTheme.white,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      Radius.circular(
                                                        100,
                                                      ),
                                                    )),
                                                child: Image(
                                                  width: 32,
                                                  image: AssetImage(
                                                    "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(widget.getAccountResponseData[index].iban.substring(4, 7))}.png",
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      "${'main.bank_name'.tr()} ${widget.getAccountResponseData[index].bank}",
                                                      style: TextTypography
                                                          .labelMedium
                                                          .copyWith(
                                                              color: widget
                                                                      .getAccountResponseData[
                                                                          index]
                                                                      .isActive
                                                                  ? colorTheme
                                                                      .text
                                                                  : colorTheme
                                                                      .solid)),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Text(
                                                      Utils.ibanFormatter(widget
                                                          .getAccountResponseData[
                                                              index]
                                                          .iban
                                                          .toString()
                                                          .toPersianDigit()),
                                                      textDirection:
                                                          TextDirection.ltr,
                                                      style: TextTypography
                                                          .labelMedium
                                                          .copyWith(
                                                              color: widget
                                                                      .getAccountResponseData[
                                                                          index]
                                                                      .isActive
                                                                  ? colorTheme
                                                                      .text
                                                                  : colorTheme
                                                                      .solid)),
                                                ],
                                              ),
                                            ),
                                            const Spacer(),
                                            BlocBuilder<AccountEnableBloc,
                                                AccountEnableState>(
                                              bloc: widget.accountEnableBloc,
                                              builder: (BuildContext context,
                                                  AccountEnableState state) {
                                                return AppSwitch(
                                                  size: 0.8,
                                                  onChanged: () {
                                                    profileIbanBottomSheet(
                                                      context: context,
                                                      width: width,
                                                      colorTheme: colorTheme,
                                                      bankName: widget
                                                          .getAccountResponseData[
                                                              index]
                                                          .bank,
                                                      ibanCaption: widget
                                                              .getAccountResponseData[
                                                                  index]
                                                              .isActive
                                                          ? 'main.confirm_active_iban'
                                                              .tr()
                                                          : 'main.confirm_deactive_iban'
                                                              .tr(),
                                                      btmConfirm: widget
                                                              .getAccountResponseData[
                                                                  index]
                                                              .isActive
                                                          ? 'main.deactive'.tr()
                                                          : 'main.confirm_and_active'
                                                              .tr(),
                                                      ibanNo: widget
                                                          .getAccountResponseData[
                                                              index]
                                                          .iban
                                                          .toString(),
                                                      icon: '',
                                                      onPressedDecline: () {
                                                        Navigator.pop(context);
                                                      },
                                                      onPressedDeActive: () {
                                                        widget.accountEnableBloc.add(AccountEnableEvent.accountEnableEventCalled(
                                                            accountEnableParam: AccountEnableParam(
                                                                iban: widget
                                                                    .getAccountResponseData[
                                                                        index]
                                                                    .iban,
                                                                activationStatus: widget
                                                                    .getAccountResponseData[
                                                                        index]
                                                                    .isActive)));
                                                        Navigator.pop(context);
                                                      },
                                                    );
                                                  },
                                                  value: widget
                                                      .getAccountResponseData[
                                                          index]
                                                      .isActive,
                                                  // value: switchStatus,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        BlocBuilder<AccountDefaultBloc,
                                            AccountDefaultState>(
                                          bloc: widget.accountDefaultBloc,
                                          builder: (context, state) {
                                            return Row(
                                              children: [
                                                Transform.scale(
                                                  scale: 1,
                                                  child: Checkbox(
                                                    checkColor:
                                                        colorTheme.primary,
                                                    fillColor:
                                                        MaterialStateProperty
                                                            .resolveWith(
                                                                getColor),
                                                    side: BorderSide(
                                                        color: widget
                                                                .getAccountResponseData[
                                                                    index]
                                                                .isActive
                                                            ? colorTheme.text
                                                            : colorTheme.solid),
                                                    value: widget
                                                        .getAccountResponseData[
                                                            index]
                                                        .isDefault,
                                                    onChanged: widget
                                                            .getAccountResponseData[
                                                                index]
                                                            .isActive
                                                        ? (bool? value) {
                                                            widget.accountDefaultBloc.add(AccountDefaultEvent.accountDefaultEventCalled(
                                                                accountDefaultParam: AccountDefaultParam(
                                                                    iban: widget
                                                                        .getAccountResponseData[
                                                                            index]
                                                                        .iban
                                                                        .toString())));
                                                          }
                                                        : null,
                                                  ),
                                                ),
                                                widget
                                                        .getAccountResponseData[
                                                            index]
                                                        .isActive
                                                    ? Text(
                                                        'main.set_as_default_iban'
                                                            .tr(),
                                                        style: TextTypography
                                                            .labelMedium
                                                            .copyWith(
                                                                color:
                                                                    colorTheme
                                                                        .text))
                                                    : Text(
                                                        'main.set_as_default_iban'
                                                            .tr(),
                                                        style: TextTypography
                                                            .labelMedium
                                                            .copyWith(
                                                                color: colorTheme
                                                                    .solid)),
                                              ],
                                            );
                                          },
                                        )
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const SizedBox(
                                    height: 10,
                                  );
                                },
                              ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: height * 0.09,
                          ),
                        )
                      ],
                    ),
            ));
      },
    );
  }
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
