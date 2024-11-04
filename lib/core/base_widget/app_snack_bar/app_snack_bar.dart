import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import '../../constant/theme/light_theme.dart';
import '../../constant/theme/typography.dart';

class AppSnackBar {
  static void showSnackBar({
    required BuildContext context,
    String title = '',
    required String message,
    Widget? icon = const SizedBox.shrink(),
    SnackBarType type = SnackBarType.success,
    int? duration,
    int? maxLines,
    double? height,
  }) {
    final colorTheme = context.colorTheme<CustomTheme>();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: 53,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: _getBackgroundColor(type),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: _getTextColor(type))),
            child: Row(
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: icon,
                  ),
                Expanded(
                  flex: 4,
                  child: Text(
                    message,
                    style: TextTypography.labelMedium.copyWith(
                      color: _getTextColor(type),
                    ),
                    maxLines: maxLines ?? 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        margin: const EdgeInsets.only(left: 10, right: 10),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        duration: Duration(seconds: duration ?? 4),
      ),
    );
  }

  static Color _getBackgroundColor(SnackBarType type) {
    switch (type) {
      case SnackBarType.success:
        return LightTheme.successContainer;
      case SnackBarType.error:
        return LightTheme.errorContainer;
      case SnackBarType.info:
        return LightTheme.infoContainer;
      case SnackBarType.warning:
        return LightTheme.warningContainer;
      default:
        return LightTheme.successContainer;
    }
  }

  static Color _getTextColor(SnackBarType type) {
    switch (type) {
      case SnackBarType.success:
        return LightTheme.onSuccessContainer;
      case SnackBarType.error:
        return LightTheme.onErrorContainer;
      case SnackBarType.info:
        return LightTheme.onInfoContainer;
      case SnackBarType.warning:
        return LightTheme.onWarningContainer;
      default:
        return LightTheme.onSuccessContainer;
    }
  }
}

enum SnackBarType { success, error, info, warning }
