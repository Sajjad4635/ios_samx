import 'package:ios_samx/core/constant/app_style.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../../../core/responsive/responsive_layout.dart';

class WalletTransactionsDataWidget extends StatelessWidget {
  final String? caption;
  final String? title;
  final String? subTitle;
  final String? assetName;
  final TextStyle? captionStyle;
  final TextStyle? subTitleStyle;
  final TextStyle? titleStyle;
  final Color? bgColor;
  final Color? subTitleColor;
  final IconData? icon ;

  const WalletTransactionsDataWidget({
    super.key,
    this.caption,
    this.title,
    this.subTitle,
    this.assetName,
    this.captionStyle,
    this.subTitleStyle,
    this.titleStyle,
    this.bgColor,
    this.subTitleColor ,
    this.icon ,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    final width = ResponsiveLayout.getDeviceType(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: SizedBox(
        width: width,
        child: Row(
          children: [

            Container(
              height: height*0.06,
              width: height*0.06,
                decoration: BoxDecoration(
                  color: bgColor ,
                  borderRadius: const BorderRadius.all(Radius.circular(25))
                ),
                child: Icon(icon, color: subTitleColor,)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: width * 0.6,
                    padding: const EdgeInsets.only(
                      right: 5.0,
                    ),
                    alignment: Alignment.topRight,
                    child: Text(caption!,
                        style: captionStyle ?? AppStyle.size12Weight600)),
                Container(
                    width: width * 0.6,
                    padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                    child: Text(title!,
                        style: titleStyle ?? AppStyle.size10Weight400Black)),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(  top: 8.0),
              child: Text(subTitle!.toString().toPersianDigit(), style: subTitleStyle ?? AppStyle.size12Weight600Green.copyWith(color: subTitleColor)),
            ),
           const Padding(
             padding: EdgeInsets.only(top: 6.0),
             child: Icon(Magicon.moreVertical),
           ),
          ],
        ),
      ),
    );
  }
}
