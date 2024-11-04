import 'package:ios_samx/core/base_widget/index.dart' show AppTopAppBar;
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:ios_samx/core/responsive/responsive_layout.dart';
import 'package:ios_samx/core/widgets/button_primary.dart';
import 'package:flutter/material.dart';

class RequestSuccessScreen extends StatelessWidget {
  const RequestSuccessScreen({
    super.key,
    required this.title,
    required this.caption,
    required this.buttonTitle,
    required this.onBackButtonPressed,
  });

  final String title;
  final String caption;
  final String buttonTitle;
  final GestureTapCallback onBackButtonPressed;

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();
    return Scaffold(
      appBar: AppTopAppBar(
        title: title,
      ),
      body: Align(
        child: Column(
          
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    height: 64,
                    width: 64,
                    image: AssetImage("assets/images/loan.png"),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: width * .9,
                    child: Text(
                      caption,
                      textAlign: TextAlign.center,
                      style: TextTypography.titleSmall
                          .copyWith(color: colorTheme.success),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ButtonPrimary(
                  title: buttonTitle,
                  buttonLoading: false,
                  customWidth: width * 0.9,
                  customHeight: 48,
                  onPressed: onBackButtonPressed,
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
