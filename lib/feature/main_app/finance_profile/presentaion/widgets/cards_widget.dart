import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/core/widgets/alert_dialog.dart';
import 'package:ios_samx/core/widgets/simple_rounded_container.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_response_data/user_card/user_card.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/card_default/params/card_default_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/domain/usecase/remove_card/params/remove_card_param.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/card_default/card_default_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/get_card/get_card_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/bloc/remove_card/remove_card_bloc.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/pages/add_card_screen.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/widgets/empty_list_widget.dart';
import 'package:ios_samx/feature/main_app/finance_profile/presentaion/widgets/loading_list.dart';
import 'package:ios_samx/injection_container.dart';
import 'package:easy_localization/easy_localization.dart' as multi_language;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/base_widget/index.dart';

class CardsWidget extends StatefulWidget {
  final List<UserCards> getCardResponseData;

  const CardsWidget({super.key, required this.getCardResponseData});

  @override
  State<CardsWidget> createState() => _CardsWidgetState();
}

class _CardsWidgetState extends State<CardsWidget> {
  late GetCardBloc _getCardBloc;
  late RemoveCardBloc _removeCardBloc;
  late CardDefaultBloc _cardDefaultBloc;
  String? bankName;
  String? cardName;

  @override
  void initState() {
    _getCardBloc = sl<GetCardBloc>();
    _removeCardBloc = sl<RemoveCardBloc>();
    _cardDefaultBloc = sl<CardDefaultBloc>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    final colorTheme = context.colorTheme<CustomTheme>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _getCardBloc,
        ),
        BlocProvider(
          create: (context) => _removeCardBloc,
        ),
        BlocProvider(
          create: (context) => _cardDefaultBloc,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<RemoveCardBloc, RemoveCardState>(
            bloc: _removeCardBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (error) {
                  showErrorWidget(context, error.code!, error.message!);
                },
                loadSuccess: (removeCardEntities) {
                  AppSnackBar.showSnackBar(
                      context: context,
                      type: SnackBarType.success,
                      title: 'main.confirm'.tr(),
                      message: "main.successfull_delete_card_msg"
                          .tr(args: ["$bankName"]));
                  _getCardBloc.add(
                      GetCardEvent.getCardEventCalled(noParams: NoParams()));
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<CardDefaultBloc, CardDefaultState>(
            bloc: _cardDefaultBloc,
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (error) {
                  showErrorWidget(context, error.code!, error.message!);
                },
                loadSuccess: (defaultCardEntities) {
                  AppSnackBar.showSnackBar(
                      context: context,
                      type: SnackBarType.success,
                      title: 'main.confirm'.tr(),
                      message: "main.successfull_default_card_msg"
                          .tr(args: ["$cardName"]));
                  _getCardBloc.add(
                      GetCardEvent.getCardEventCalled(noParams: NoParams()));
                },
                orElse: () {},
              );
            },
          )
        ],
        child: BlocBuilder<GetCardBloc, GetCardState>(
            bloc: _getCardBloc,
            builder: (context, state) {
              final isLoading = state is GetCardStateLoading;
              return Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
                child: Center(
                  child: SizedBox(
                    width: width,
                    child: isLoading
                        ? const LoadingList(
                            isIban: false,
                          )
                        : widget.getCardResponseData.isEmpty
                            ? const EmptyListWidget(
                                isCard: true,
                              )
                            : ListView.separated(
                                itemCount: widget.getCardResponseData.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(
                                      bottom: index + 1 ==
                                              widget.getCardResponseData.length
                                          ? 15.0
                                          : 0),
                                  child: SimpleRoundedContainer(
                                    width: width,
                                    height: 160,
                                    bgColor: Utils.extractColorBaseCardNumber(
                                        int.tryParse(widget
                                                .getCardResponseData[index].pan
                                                .substring(0, 6)) ??
                                            0),
                                    borderRadius: 16,
                                    borderColor: Colors.transparent,
                                    widget: Stack(
                                      children: [
                                        Skeleton.ignore(
                                          ignore: true,
                                          child: Center(
                                            child: SizedBox(
                                              height: 160,
                                              child: Image(
                                                image: const AssetImage(
                                                    "assets/images/card_design.png"),
                                                color: colorTheme.white
                                                    .withOpacity(0.4),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, right: 8.0),
                                                  child: widget
                                                          .getCardResponseData[
                                                              index]
                                                          .isDefault
                                                      ? Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          decoration:
                                                              BoxDecoration(
                                                                  color:
                                                                      colorTheme
                                                                          .white,
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .all(
                                                                    Radius
                                                                        .circular(
                                                                      100,
                                                                    ),
                                                                  )),
                                                          child: const Icon(
                                                            Magicon.thumbtack,
                                                            size: 17,
                                                          ))
                                                      : const SizedBox(
                                                          height: 17,
                                                          width: 17,
                                                        )),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0, right: 25),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    decoration: BoxDecoration(
                                                        color: colorTheme.white,
                                                        borderRadius:
                                                            const BorderRadius
                                                                .all(
                                                          Radius.circular(
                                                            100,
                                                          ),
                                                        )),
                                                    child: Center(
                                                      child: Image.asset(
                                                          fit: BoxFit.fill,
                                                          "assets/images/bank_icons/${Utils.extractIconBankBaseCardNumber(widget.getCardResponseData[index].pan.substring(0, 6))}.png"),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 10,
                                                    ),
                                                    child: SizedBox(
                                                      width: width * 0.6,
                                                      child: RichText(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 1,
                                                        softWrap: true,
                                                        text: TextSpan(
                                                          children: <TextSpan>[
                                                            TextSpan(
                                                              text: widget
                                                                  .getCardResponseData[
                                                                      index]
                                                                  .bankName,
                                                              style: TextTypography
                                                                  .titleSmall
                                                                  .copyWith(
                                                                      color: colorTheme
                                                                          .white),
                                                            ),
                                                            TextSpan(
                                                                text: widget
                                                                        .getCardResponseData[
                                                                            index]
                                                                        .title
                                                                        .isNotEmpty
                                                                    ? "  -  "
                                                                    : "",
                                                                style: TextStyle(
                                                                    color: colorTheme
                                                                        .white)),
                                                            TextSpan(
                                                              text: widget
                                                                      .getCardResponseData[
                                                                          index]
                                                                      .title
                                                                      .isNotEmpty
                                                                  ? widget
                                                                      .getCardResponseData[
                                                                          index]
                                                                      .title
                                                                  : "   ",
                                                              style: TextTypography
                                                                  .labelLarge
                                                                  .copyWith(
                                                                      color: colorTheme
                                                                          .white),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 15.0),
                                                    child: GestureDetector(
                                                      onTap: () async {
                                                        bankName = widget
                                                            .getCardResponseData[
                                                                index]
                                                            .bankName;
                                                        cardName = widget
                                                            .getCardResponseData[
                                                                index]
                                                            .title;
                                                        await cardsOperationBottomSheet(
                                                            cardIndex: index);
                                                      },
                                                      child: Icon(
                                                        Magicon.moreVertical,
                                                        color: colorTheme.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: height * 0.03,
                                              ),
                                              child: Directionality(
                                                textDirection:
                                                    TextDirection.ltr,
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <InlineSpan>[
                                                      TextSpan(
                                                        text: widget
                                                            .getCardResponseData[
                                                                index]
                                                            .pan
                                                            .substring(0, 4)
                                                            .toPersianDigit(),
                                                        style: TextTypography
                                                            .titleLarge
                                                            .copyWith(
                                                                color:
                                                                    colorTheme
                                                                        .white),
                                                      ),
                                                      const WidgetSpan(
                                                          alignment:
                                                              PlaceholderAlignment
                                                                  .baseline,
                                                          baseline: TextBaseline
                                                              .alphabetic,
                                                          child: SizedBox(
                                                              width: 40)),
                                                      TextSpan(
                                                        text: widget
                                                            .getCardResponseData[
                                                                index]
                                                            .pan
                                                            .substring(4, 8)
                                                            .toPersianDigit(),
                                                        style: TextTypography
                                                            .titleLarge
                                                            .copyWith(
                                                                color:
                                                                    colorTheme
                                                                        .white),
                                                      ),
                                                      const WidgetSpan(
                                                          alignment:
                                                              PlaceholderAlignment
                                                                  .baseline,
                                                          baseline: TextBaseline
                                                              .alphabetic,
                                                          child: SizedBox(
                                                              width: 40)),
                                                      TextSpan(
                                                        text: widget
                                                            .getCardResponseData[
                                                                index]
                                                            .pan
                                                            .substring(8, 12)
                                                            .toPersianDigit(),
                                                        style: TextTypography
                                                            .titleLarge
                                                            .copyWith(
                                                                color:
                                                                    colorTheme
                                                                        .white),
                                                      ),
                                                      const WidgetSpan(
                                                          alignment:
                                                              PlaceholderAlignment
                                                                  .baseline,
                                                          baseline: TextBaseline
                                                              .alphabetic,
                                                          child: SizedBox(
                                                              width: 40)),
                                                      TextSpan(
                                                        text: widget
                                                            .getCardResponseData[
                                                                index]
                                                            .pan
                                                            .substring(12, 16)
                                                            .toPersianDigit(),
                                                        style: TextTypography
                                                            .titleLarge
                                                            .copyWith(
                                                                color:
                                                                    colorTheme
                                                                        .white),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const SizedBox(
                                    height: 12,
                                  );
                                },
                              ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Future<void> cardsOperationBottomSheet({required int cardIndex}) async {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);

    await showAppBottomSheet(
        context: context,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  SimpleRoundedContainer(
                    width: width,
                    height: 96,
                    bgColor: Utils.extractColorBaseCardNumber(int.tryParse(
                            widget.getCardResponseData[cardIndex].pan
                                .substring(0, 6)) ??
                        0),
                    borderRadius: 16,
                    borderColor: Colors.transparent,
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset(
                                fit: BoxFit.fill,
                                "assets/images/bank_icons/${Utils.extractIconBankBaseCardNumber(widget.getCardResponseData[cardIndex].pan.substring(0, 6))}.png"),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Center(
                          child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Text(
                                Utils.cardSpaceFormatter(widget
                                    .getCardResponseData[cardIndex].pan
                                    .toPersianDigit()),
                                style: TextTypography.titleLarge
                                    .copyWith(color: colorTheme.white),
                              )),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 120,
                      child: Image(
                        image:
                            const AssetImage("assets/images/card_design.png"),
                        color: colorTheme.white.withOpacity(0.4),
                      ),
                    ),
                  ),
                ],
              ),
              widget.getCardResponseData[cardIndex].isDefault
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Magicon.creditCardCheck,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'main.default_card'.tr(),
                                style: TextTypography.titleLarge
                                    .copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          AppSwitch(
                            size: 0.8,
                            onChanged: () {
                              Navigator.of(context).pop();
                              _cardDefaultBloc.add(
                                  CardDefaultEvent.cardDefaultEventCalled(
                                      cardDefaultParam: CardDefaultParam(
                                          cardId: widget
                                              .getCardResponseData[cardIndex]
                                              .id)));
                            },
                            value:
                                widget.getCardResponseData[cardIndex].isDefault,
                          )
                        ],
                      ),
                    ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                      child: AddCardScreen(
                        isEditing: true,
                        defaultCardId: widget.getCardResponseData[cardIndex].id,
                        defaultCardNumber:
                            widget.getCardResponseData[cardIndex].pan,
                        defaultCardName:
                            widget.getCardResponseData[cardIndex].title,
                      ),
                      type: PageTransitionType.leftToRight,
                    ),
                  );
                },
                child: Row(
                  children: [
                    const Icon(
                      Magicon.edit,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'main.edit_card'.tr(),
                      style: TextTypography.titleLarge.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    deleteCardBottomSheet(cardIndex: cardIndex);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Magicon.trash,
                        color: colorTheme.error,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'main.remove_card'.tr(),
                        style: TextTypography.titleLarge
                            .copyWith(color: colorTheme.error, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void deleteCardBottomSheet({required int cardIndex}) async {
    final colorTheme = context.colorTheme<CustomTheme>();
    await showAppBottomSheet(
      context: context,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'main.remove_card'.tr(),
              style: TextTypography.titleSmall,
            ),
            const SizedBox(height: 16),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'main.delete_card_confirmation_one'.tr(),
                    style: TextTypography.bodyMedium
                        .copyWith(color: colorTheme.textVariant),
                  ),
                  TextSpan(
                    text: '“${widget.getCardResponseData[cardIndex].bankName}”',
                    style: TextTypography.bodyMedium.copyWith(
                        color: colorTheme.textVariant,
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'main.delete_card_confirmation_two'.tr(),
                    style: TextTypography.bodyMedium
                        .copyWith(color: colorTheme.textVariant),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            AppButton(
              buttonType: ButtonType.isFilled,
              bgColor: colorTheme.error,
              title: 'main.remove'.tr(),
              customHeight: 40,
              customWidth: MediaQuery.of(context).size.width,
              onPressed: () {
                Navigator.of(context).pop();

                _removeCardBloc.add(RemoveCardEvent.removeCardEventCalled(
                    removeCardParam: RemoveCardParam(
                        cardId: widget.getCardResponseData[cardIndex].id)));
              },
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffF0F0F3),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "main.refuse".tr(),
                    style: TextTypography.labelLarge.copyWith(),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
