import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:ios_samx/core/constant/theme/typography.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TicketStatusContainer extends StatelessWidget {
  const TicketStatusContainer({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();
    final info = switch (status) {
      'Created' => (
          text: 'cplife.state_created',
          color: colorTheme.onErrorContainer,
          bgColor: colorTheme.infoContainer,
        ),
      'Closed' => (
          text: "cplife.approved",
          color: colorTheme.success,
          bgColor: colorTheme.successContainer,
        ),
      'Failed' => (
          text: 'cplife.state_failed',
          color: colorTheme.onErrorContainer,
          bgColor: colorTheme.infoContainer,
        ),
      'Rejected' => (
          text: 'cplife.state_rejected',
          color: colorTheme.onErrorContainer,
          bgColor: colorTheme.errorContainer,
        ),
      _ => (
          text: 'cplife.state_in_progress',
          color: colorTheme.onWarning,
          bgColor: colorTheme.warning,
        )
    };

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.5),
      width: 116,
      decoration: BoxDecoration(
        color: info.bgColor,
        border: Border.all(color: info.color),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          info.text.tr(),
          style: TextTypography.labelMedium.copyWith(color: info.color),
        ),
      ),
    );
  }
}
