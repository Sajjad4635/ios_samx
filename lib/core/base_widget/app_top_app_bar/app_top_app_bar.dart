import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/feature/main_app/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../constant/theme/custom_theme.dart';
import '../../constant/theme/light_theme.dart';
import '../../constant/theme/typography.dart';
import '../../responsive/responsive_layout.dart';

class AppTopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? isQrCode;
  final void Function()? onPressed;
  final PreferredSizeWidget? bottom;
  const AppTopAppBar({
    super.key,
    required this.title,
    this.isQrCode = false,
    this.onPressed,
    this.bottom
  });

  @override
  Widget build(BuildContext context) {
    final width = ResponsiveLayout.getDeviceType(context);
    final colorTheme = context.colorTheme<CustomTheme>();

    return SizedBox(
      width: width,
      child: AppBar(
        backgroundColor: LightTheme.bgInverse,
        elevation: 0,
        bottom: bottom,
        // ignore: unnecessary_null_comparison
        title: title == null
            ? const Image(
                width: 25,
                height: 25,
                image: AssetImage(
                  'assets/images/sam_logo_white.png',
                ),
              )
            : Text(
                title,
                style: TextTypography.headLineLarge
                    .copyWith(color: colorTheme.textInverse,fontSize: 18),
              ),
        centerTitle: true,
        leading: IconButton(
          onPressed: onPressed ??
              () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const DashboardScreen(),
                        type: PageTransitionType.leftToRight));
              },
          icon: const Icon(
            opticalSize: 20,
            Icons.arrow_back,
            color: LightTheme.textInverse,
          ),
        ),
        actions: [
          isQrCode!
              ? IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    opticalSize: 24,
                    Icons.qr_code_scanner,
                    color: LightTheme.textInverse,
                  ))
              : const SizedBox()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
