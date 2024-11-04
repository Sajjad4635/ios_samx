import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_style.dart';
import '../../../../../core/constant/theme/custom_theme.dart';
import '../../../../../core/constant/theme/typography.dart';
import '../../../../../core/widgets/ball_beat_progress_indicator.dart';

class ProfileWidget extends StatelessWidget {
  final String caption;
  final String desc;
  final String? subCaption;
  final String? subCaptionDetail;
  final String? footerDetailCaption;
  final Color? rightIconColor;
  final Color? leftIconColor;
  final void Function()? onPressedIconRight;
  final void Function()? onPressed;
  final IconData? rightIcon;
  final IconData? leftIcon;
  final bool loadingStatus;

  const ProfileWidget({
    super.key,
    required this.caption,
    required this.desc,
    this.subCaption,
    this.subCaptionDetail,
    this.onPressedIconRight,
    this.rightIcon,
    this.leftIcon,
    this.rightIconColor,
    this.leftIconColor,
    this.onPressed,
    this.footerDetailCaption,
    required this.loadingStatus,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              rightIcon == null
                  ? const SizedBox()
                  : IconButton(
                      onPressed: onPressedIconRight,
                      color: rightIconColor,
                      icon: Icon(rightIcon),
                    ),
              Text(caption,
                  style: AppStyle.size14Weight600
                      .copyWith(color: AppColors.black)),
              const Spacer(),
              loadingStatus
                  ? BallBeatProgressIndicator(
                      size: 10,
                      color: colorTheme.primary,
                    )
                  : GestureDetector(
                      onTap: onPressed,
                      child: Row(
                        children: [
                          Text(
                            desc,
                            style: TextTypography.titleSmall.copyWith(
                              color: colorTheme.primary,
                            ),
                          ),
                          leftIcon == null
                              ? const SizedBox()
                              : Icon(
                                  leftIcon,
                                  color: leftIconColor,
                                ),
                        ],
                      ),
                    )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(footerDetailCaption!, style: TextTypography.labelSmall),
          ],
        ),
        Divider(
          thickness: 1,
          color: colorTheme.borders,
        ),
      ],
    );
  }
}
