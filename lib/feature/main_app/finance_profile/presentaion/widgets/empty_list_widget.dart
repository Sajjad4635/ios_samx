import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/responsive/responsive_layout.dart';

class EmptyListWidget extends StatelessWidget {
  final bool isCard;

  const EmptyListWidget({super.key, required this.isCard});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final width = ResponsiveLayout.getDeviceType(context);
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height * 0.08,
        ),
        Center(
          child: Image(
            width: width * 0.8,
            image: const AssetImage("assets/images/card.png"),
          ),
        ),
        Text(
          isCard ? 'main.empty_card_msg'.tr() : 'main.empty_iban_list'.tr(),
          textAlign: TextAlign.center,
          style:
              (TextTypography.bodyMedium.copyWith(color: colorTheme.bgInverse)),
        ),
      ],
    );
  }
}
