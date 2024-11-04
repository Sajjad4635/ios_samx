import 'package:ios_samx/core/constant/app_style.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../../../../core/responsive/responsive_layout.dart';

class WalletDataWidget extends StatelessWidget {
  final String? caption;
  final String? title;
  final String? subTitle;
  final String? assetName;
  final TextStyle? captionStyle;
  final TextStyle? subTitleStyle;
  final TextStyle? titleStyle;
  final Color? assetColor;

  const WalletDataWidget({
    super.key,
    this.caption,
    this.title,
    this.subTitle,
    this.assetName,
    this.captionStyle,
    this.subTitleStyle,
    this.titleStyle,
    this.assetColor,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: SizedBox(
        width: width,
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      100,
                    ),
                  )),
              child: Image(
                height: height * 0.05,
                image: AssetImage(
                  assetName!,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: width * 0.6,
                    padding: const EdgeInsets.only(
                      right: 5.0,
                      left: 10
                    ),
                    child: Text(caption!,
                        style: captionStyle ?? AppStyle.size12Weight600)),
                Container(
                    width: width * 0.6,
                    padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                    child: Text(title!,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.right,
                        style: titleStyle ?? AppStyle.size10Weight400Black)),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Text(subTitle!.toString().toPersianDigit(),
                  style: subTitleStyle ?? AppStyle.size12Weight600Green),
            ),
          ],
        ),
      ),
    );
  }
}
