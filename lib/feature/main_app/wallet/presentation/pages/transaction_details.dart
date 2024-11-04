import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_transaction/entity/wallet_transaction_response_data.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/light_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';
import '../../../../../core/widgets/simple_rounded_container.dart';


class TransactionDetails extends StatelessWidget {
      const TransactionDetails({super.key, required this.walletTransactionResponseData});

   final WalletTransactionResponseData walletTransactionResponseData ;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    String depositTypeCode =   "219735" ; // deposit
    final isTransfer =  walletTransactionResponseData.transactionTypeCode == depositTypeCode ? false : true ;
    final String transactionType = walletTransactionResponseData.transactionType ;


    return PopScope(
      canPop: true,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColors.darkGray,
              elevation: 0,
              centerTitle: true,
              title: Text(
                'main.transaction_detail'.tr(),
                style: AppStyle.size18Weight700,
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
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
          body:Center(
            child:  SizedBox(
              width: width ,
              child:   Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.05),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.05,),
                      Text(
                        walletTransactionResponseData.transactionType ,
                        style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),),
                      SizedBox(height: height * 0.02,),
                      Text(
                        "${walletTransactionResponseData.amount.toInt().toString().toPersianDigit().seRagham()} ريال",
                        style: TextTypography.headLineLarge.copyWith(color: LightTheme.text),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SimpleRoundedContainer
                        (
                          width: width * 0.65,
                          height: height * 0.06,
                          bgColor:  LightTheme.success  ,
                          borderRadius: 56.0,
                          borderColor: AppColors.borderColor,
                          onTap: () {},
                          widget: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.check_circle_outline, color: Colors.white,),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                //  walletTransactionResponseData.transactionTypeCode == depositTypeCode  ? "main.success_deposit".tr() : "main.wallet_to_wallet_success".tr(),
                                    transactionType ,
                                  style: TextTypography.labelLarge.copyWith(color: LightTheme.onSuccess),
                                ),
                              ),
                            ],
                          )
                      ),

                      SizedBox(height: height * 0.03,),
                      const Divider(thickness: 1, color: LightTheme.borders),
                      SizedBox(height: height * 0.03,),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text('main.time'.tr(),
                            style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),),
                          Text("${walletTransactionResponseData.time.toPersianDigit()} , ${walletTransactionResponseData.date.toPersianDate().toPersianDigit()}",
                              style: TextTypography.titleSmall.copyWith(color: LightTheme.text)),
                        ],
                      ),
                      SizedBox(height: height * 0.05,),

                      isTransfer ?
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text( "انتقال دهنده", style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),),
                          Text( walletTransactionResponseData.source.split(" ").first.toString().toPersianDigit(),
                              style: TextTypography.titleSmall.copyWith(color: LightTheme.text)),
                        ],
                      ) : const SizedBox(),

                      SizedBox(height:isTransfer ? height * 0.05:0,),

                      isTransfer ?
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text( "دریافت کننده", style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: Text( walletTransactionResponseData.destination.split(" ").first.toString().toPersianDigit(),
                                style: TextTypography.titleSmall.copyWith(color: LightTheme.text)),
                          ),
                        ],
                      ) : const SizedBox(),

                      SizedBox(height:isTransfer ? height * 0.05:0,),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text("main.issue_tracking".tr(), style: TextTypography.labelLarge.copyWith(color: LightTheme.textVariant),),
                          Text( walletTransactionResponseData.referenceNumber.toString().toPersianDigit(),
                              style: TextTypography.titleSmall.copyWith(color: LightTheme.text)),
                        ],
                      ),
                      SizedBox(height: height * 0.03,),
                      const Divider(thickness: 1, color: LightTheme.borders),
                      SizedBox(height: height * 0.03,),
                      Align(
                          alignment: FractionalOffset.centerRight,
                          child: Text("توضیحات ",
                            style: (TextTypography.titleSmall.copyWith(color: colorTheme.bgInverse)),
                          )
                      ),
                      SizedBox(height: height * 0.01,),
                      Align(
                          alignment: FractionalOffset.centerRight,
                          child: Text(walletTransactionResponseData.description.toPersianDigit(),
                            style: (TextTypography.bodySmall.copyWith(color: colorTheme.bgInverse)),

                          )
                      )    ,
                      // SizedBox(height: height * 0.01,),
                      // Align(
                      //     alignment: FractionalOffset.centerRight,
                      //     child: Text(walletTransactionResponseData.note??"",
                      //       style: (TextTypography.bodySmall.copyWith(color: colorTheme.bgInverse)),
                      //
                      //     )
                      // )


                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
