import 'package:ios_samx/core/constant/app_shadow.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class BodySingleItem extends StatelessWidget {
  final double width;
  final double height;

  final String imgName;
  final String caption;
  final TextStyle textStyle;
  final void Function()? onTap;

  const BodySingleItem({
    super.key,
    required this.width,
    required this.height,


    required this.imgName,
    required this.caption,
    required this.textStyle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: colorTheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
            border: Border.all( color: colorTheme.onPrimaryContainer),
            boxShadow: [
              AppShadow.shadow1,
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 20,
                child: Image(
                  image: AssetImage(
                    imgName,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 2.0 , right: 5.0),
              child: Text(
                caption,
                style: textStyle,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
