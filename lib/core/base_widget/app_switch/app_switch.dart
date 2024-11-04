import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {
  final bool value;
  final double size;
  final void Function()? onChanged;

  const AppSwitch(
      {super.key,
      required this.onChanged,
      required this.value,
      required this.size});

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return Theme(
      data: ThemeData(
        useMaterial3: true,
      ).copyWith(
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(outline: colorTheme.textVariant),
      ),
      child: Transform.scale(
        scale: size,
        child: Switch(
          value: value,
          activeColor: colorTheme.onPrimary,
          inactiveThumbColor: colorTheme.textVariant,
          activeTrackColor: colorTheme.primary,
          inactiveTrackColor: colorTheme.white,
          splashRadius: 1.0,
          onChanged: (bool value) {
            onChanged!();
          },
        ),
      ),
    );
  }
}
