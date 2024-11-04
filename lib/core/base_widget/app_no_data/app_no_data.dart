import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppNoData extends StatelessWidget {
  const AppNoData(
      {super.key,
      required this.text,
      this.imagePath = 'assets/images/no_data.png'});

  final String text;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              width: 270,
              height: 270,
              image: AssetImage(imagePath!),
            ),
          ),
          Text(
            text,
            style: (TextTypography.bodyMedium
                .copyWith(color: colorTheme.bgInverse)),
          ),
        ],
      ),
    );
  }
}
