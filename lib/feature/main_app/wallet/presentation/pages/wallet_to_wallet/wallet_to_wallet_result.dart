import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/pages/wallet_screen.dart';
import 'package:ios_samx/feature/main_app/wallet/presentation/widget/result_item_widget.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../../core/constant/app_colors.dart';
import '../../../../../../core/constant/app_style.dart';
import '../../../../../../core/constant/theme/light_theme.dart';
import '../../../../../../core/constant/theme/typography.dart';
import '../../../../../../core/responsive/responsive_layout.dart';
import '../../../../../../core/widgets/simple_rounded_container.dart';

class WalletToWalletResult extends StatefulWidget {
  final String amountTransfer;
  final String status;
  final String message;
  final String transferTime;
  final String transferPersianDate;
  final String referenceNumber;
  final String destinationPhoneNo;
  final String phoneNo;

  const WalletToWalletResult(
      {super.key,
      required this.amountTransfer,
      required this.status,
      required this.message,
      required this.transferTime,
      required this.transferPersianDate,
      required this.referenceNumber,
      required this.destinationPhoneNo,
      required this.phoneNo});

  @override
  State<WalletToWalletResult> createState() => _WalletToWalletResultState();
}

class _WalletToWalletResultState extends State<WalletToWalletResult> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          Navigator.pushReplacement(
              context,
              PageTransition(
                  child: const WalletScreen(),
                  type: PageTransitionType.rightToLeft));
        },
        child: Scaffold(
          backgroundColor: AppColors.lightWhite,
          appBar: AppBar(
            backgroundColor: AppColors.darkGray,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'main.wallet_to_wallet'.tr(),
              style: AppStyle.size18wWeight700,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                        child: const WalletScreen(),
                        type: PageTransitionType.leftToRight),
                    (route) => false);
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
                        height: height * 0.05,
                      ),
                      const Image(
                        image: AssetImage("assets/images/avatar.png"),
                        height: 56,
                        width: 56,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'main.destination_wallet'.tr(),
                        style: TextTypography.bodySmall
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        widget.destinationPhoneNo.toPersianDigit(),
                        style: TextTypography.labelMedium
                            .copyWith(color: LightTheme.textVariant),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        "${widget.amountTransfer.toString().seRagham().toPersianDigit()} ریال",
                        style: TextTypography.headLineMedium,
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text(
                        "main.transfer_amount".tr(),
                        style: TextTypography.labelMedium.copyWith(
                            color: LightTheme.textVariant,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      widget.status == "True"?
                      SimpleRoundedContainer(
                          width: width * 0.65,
                          height: height * 0.06,
                          bgColor: LightTheme.success,
                          borderRadius: 56.0,
                          borderColor: AppColors.borderColor,
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
                                  "main.success_deposit".tr(),
                                  textDirection: TextDirection.ltr,
                                  style: TextTypography.labelLarge
                                      .copyWith(color: LightTheme.white),
                                ),
                              ),
                            ],
                          )) :
                      SimpleRoundedContainer(
                          width: width * 0.65,
                          height: height * 0.06,
                          bgColor: LightTheme.error,
                          borderRadius: 56.0,
                          borderColor: AppColors.borderColor,
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
                                  "main.unsuccess_deposit".tr(),
                                  textDirection: TextDirection.ltr,
                                  style: TextTypography.labelLarge
                                      .copyWith(color: LightTheme.white),
                                ),
                              ),
                            ],
                          )),
                      widget.status == "False"
                          ? Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Text(
                                "main.invalid_data".tr(),
                                style: TextTypography.bodyMedium.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: colorTheme.error),
                              ),
                            )
                          : const SizedBox.shrink(),
                      SizedBox(
                        height: height * 0.03,
                      ),

                      SimpleRoundedContainer(
                          width: width - 30,
                          height: 172,
                          bgColor: colorTheme.white,
                          borderRadius: 8,
                          borderColor: colorTheme.borders,
                          onTap: () {},
                          widget: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ResultItemWidget(
                                itemTitle: "main.source_wallet".tr(),
                                item: widget.phoneNo.toPersianDigit(),
                              ),
                              const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Divider(
                                      thickness: 1, color: LightTheme.borders)),
                              ResultItemWidget(
                                itemTitle: "main.date_and_time".tr(),
                                item:
                                    "${widget.transferPersianDate.toPersianDigit()} ${widget.transferTime.toPersianDigit()}",
                              ),
                              const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Divider(
                                      thickness: 1, color: LightTheme.borders)),
                              ResultItemWidget(
                                  itemTitle: "main.issue_tracking".tr(),
                                  item: widget.referenceNumber),
                            ],
                          )),

                      const SizedBox(
                        height: 12,
                      ),
                      const Spacer(),

                      ButtonPrimary(
                        title: "main.return_to_wallet".tr(),
                        buttonLoading: false,
                        customWidth: width * 0.9,
                        customHeight: 48,
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                child: (const WalletScreen()),
                                type: PageTransitionType.leftToRight),
                            (route) => false,
                          );
                        },
                      ),

                      //   SimpleRoundedContainer(
                      //     width: width * 0.9,
                      //     height: 48,
                      //     bgColor: LightTheme.primaryContainer,
                      //     borderRadius: 8,
                      //     borderColor: LightTheme.primaryContainer,
                      //     widget: Align(
                      //         alignment: Alignment.center,
                      //         child: Text(
                      //           "اشتراک‌گذاری",
                      //           style: TextTypography.labelLarge
                      //               .copyWith(color: LightTheme.onPrimaryContainer),
                      //         )),
                      //   ),
                      SizedBox(
                        height: height * 0.02,
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
