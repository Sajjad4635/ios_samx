import 'package:ios_samx/core/constant/strings.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/utils/utils.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_withdraw/wallet_withdraw_entity.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/app_style.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../../../core/widgets/button_primary.dart';
import '../../../../../../core/widgets/simple_rounded_container.dart';
import '../wallet_screen.dart';

class WithDrawResultScreen extends StatefulWidget {
  final String iban;
  final WalletWithdrawEntities withdrawEntities;

  const WithDrawResultScreen(
      {super.key, required this.iban, required this.withdrawEntities});

  @override
  State<WithDrawResultScreen> createState() => _WithDrawResultScreenState();
}

class _WithDrawResultScreenState extends State<WithDrawResultScreen> {
  String givenName = "";
  String familyName = "";
  int gender = 0;

  @override
  void initState() {
    Box box = Hive.box(Strings.appDBName);
    givenName = box.get("given_name");
    familyName = box.get("family_name");
    gender = box.get(Strings.gender);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.lightWhite,
        appBar: AppBar(
          backgroundColor: AppColors.darkGray,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'main.withdraw_title'.tr(),
            style: AppStyle.size18wWeight700,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                    child: (const WalletScreen()),
                    type: PageTransitionType.leftToRight),
              );
            },
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back,
                color: AppColors.lightGrey,
              ),
            ),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: width,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Stack(
                      children: [
                        ClipOval(
                          child: Image(
                            image: AssetImage(gender == 0
                                ? "assets/images/profile_female.png"
                                : "assets/images/profile_male.png"),
                            height: 64,
                            width: 64,
                          ),
                        ),
                        Positioned(
                          top: 37,
                          right: 40,
                          child: ClipOval(
                            child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(2),
                              child: Image(
                                image: AssetImage(
                                    "assets/images/bank_icons/${Utils.extractIconBankBaseSheba(widget.iban.toEnglishDigit().substring(4, 7))}.png"),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$givenName $familyName",
                      style: TextTypography.bodySmall
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      Utils.ibanFormatter(widget.iban.toPersianDigit()),
                      textDirection: TextDirection.ltr,
                      style: TextTypography.labelMedium
                          .copyWith(color: colorTheme.textVariant),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                        widget.withdrawEntities.responseData.amount
                                .toPersianDigit()
                                .seRagham() +
                            ' ${"main.saved_money_currency".tr()}'
                                .toString()
                                .toPersianDigit(),
                        style: TextTypography.headLineMedium),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'main.withdraw_amount'.tr(),
                      style: TextTypography.labelMedium
                          .copyWith(color: colorTheme.textVariant),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    widget.withdrawEntities.responseData.status == "Success"
                        ? SimpleRoundedContainer(
                            width: width * 0.35,
                            height: height * 0.04,
                            bgColor: colorTheme.success,
                            borderRadius: 20.0,
                            borderColor: colorTheme.borders,
                            onTap: () {},
                            widget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Magicon.checkCircle,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'main.successful_withdraw'.tr(),
                                    style: AppStyle.size14Weight600White,
                                  ),
                                ),
                              ],
                            ))
                        : SimpleRoundedContainer(
                            width: width * 0.35,
                            height: height * 0.04,
                            bgColor: colorTheme.error,
                            borderRadius: 20.0,
                            borderColor: colorTheme.borders,
                            onTap: () {},
                            widget: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Magicon.timesCircle,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'main.unsuccessful_withdraw'.tr(),
                                    style: AppStyle.size14Weight600White,
                                  ),
                                ),
                              ],
                            )),
                    widget.withdrawEntities.responseData.status == "Success"
                        ? const SizedBox.shrink()
                        : Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.03, bottom: height * 0.03),
                            child: Text(
                              'main.unsuccessful_withdraw'.tr(),
                              style: TextTypography.bodyMedium
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    SimpleRoundedContainer(
                      width: width - 20,
                      height: height * 0.20,
                      bgColor: Colors.transparent,
                      borderRadius: 8.0,
                      borderColor: AppColors.borderColor,
                      onTap: () {},
                      widget: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'main.withdraw_source'.tr(),
                                  style: AppStyle.size14Weight400costColor,
                                ),
                                Text(
                                  "home.wallet"
                                      .tr()
                                      .toString()
                                      .toPersianDigit(),
                                  style: AppStyle.size13Weight600,
                                ),
                              ],
                            ),
                            const Divider(
                              color: AppColors.borderColors,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'main.date_and_time'.tr(),
                                  style: AppStyle.size13Weight400,
                                ),
                                Text(
                                  "${widget.withdrawEntities.responseData.transferPersianDate} ${widget.withdrawEntities.responseData.transferTime}"
                                      .toString()
                                      .toPersianDigit(),
                                  style: AppStyle.size13Weight600,
                                ),
                              ],
                            ),
                            const Divider(
                              color: AppColors.borderColors,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'main.issue_tracking'.tr(),
                                  style: AppStyle.size13Weight400,
                                ),
                                Text(
                                  widget.withdrawEntities.responseData
                                      .referenceNumber
                                      .toString()
                                      .toPersianDigit(),
                                  style: AppStyle.size13Weight600,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Spacer(),
                    ButtonPrimary(
                      title: "main.return_to_wallet".tr(),
                      buttonLoading: false,
                      customWidth: width * 0.9,
                      customHeight: 48,
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: (const WalletScreen()),
                              type: PageTransitionType.leftToRight),
                        );
                      },
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
