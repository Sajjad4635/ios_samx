import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magicon/magicon.dart';


class WalletBalanceWidget extends StatelessWidget {
  final bool isBalanceHide;
  final String walletBalance;
  final Function() iconTap;
  const WalletBalanceWidget({super.key , required this.isBalanceHide , required this.walletBalance , required this.iconTap});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return Container(
      height: 53,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: colorTheme.borders),
      ),
      child: Wrap(
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 7, right: 5),
            child: InkWell(
              onTap: iconTap,
              child: Icon(isBalanceHide
                  ? Magicon.eyeSlash
                  : Magicon.eye),
            ),
          ),
          Text(
            '${isBalanceHide ? "*******" : walletBalance } ریال ',
            style: TextTypography.labelLarge
                .copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
