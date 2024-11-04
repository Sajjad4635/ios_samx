import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/widgets/simple_rounded_container.dart';
import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive_layout.dart';

class WalletDataRadioButtonWidget extends StatelessWidget {
  final String? caption;
  final String? title;
  final String? assetName;
  final TextStyle? captionStyle;
  final TextStyle? titleStyle;
  final int itemIndex;
  final int selectedVal;
  final void Function(int?)? radioButtonOnChanged;

  const WalletDataRadioButtonWidget(
      {super.key,
      this.caption,
      this.title,
      this.assetName,
      this.captionStyle,
      this.titleStyle,
      required this.itemIndex,
      required this.selectedVal,
      required this.radioButtonOnChanged});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: SimpleRoundedContainer(
        width: width - 20,
        height: height * 0.1,
        bgColor: colorTheme.layer,
        borderRadius: 8.0,
        borderColor: itemIndex == selectedVal ? colorTheme.primary : colorTheme.borders,
        widget: Row(
          children: [
            Radio<int>(
              value: itemIndex,
              groupValue: selectedVal,
              activeColor: colorTheme.primary,
              fillColor: MaterialStateProperty.all(colorTheme.primary),
              onChanged: radioButtonOnChanged,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: VerticalDivider(
                color: colorTheme.borders,
                thickness: 1,
              ),
            ),
            Container(
              height: 32,
              width: 32,
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.only(right: 15),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      100,
                    ),
                  )),
              child: Image(
                height: 32,
                width: 32,
                image: AssetImage(
                  assetName!,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        right: 5.0, top: 10.0, bottom: 10),
                    child: Text(title!,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.right,
                        style: titleStyle ??
                            AppStyle.size10Weight400Black)),
                Container(
                    padding: const EdgeInsets.only(right: 5.0, left: 10),
                    child: Text(caption!,
                        textDirection: TextDirection.ltr,
                        style:
                            captionStyle ?? AppStyle.size12Weight500)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
