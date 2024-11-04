import 'package:flutter/material.dart';

import '../../constant/theme/light_theme.dart';
import '../../constant/theme/typography.dart';

enum ColorLabel {
  blue('آیتم منو'),
  pink('آیتم منو'),
  green('آیتم منو'),
  yellow('آیتم منو');

  const ColorLabel(this.label);

  final String label;
}

class AppDropDown extends StatefulWidget {
  const AppDropDown({super.key});

  @override
  State<AppDropDown> createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  ColorLabel? selectedColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: LightTheme.primary,
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DropdownMenu<ColorLabel>(
                  initialSelection: ColorLabel.green,
                  controller: colorController,
                  requestFocusOnTap: true,
                  label: Text(
                    'عنوان',
                    style: TextTypography.labelMedium
                        .copyWith(color: LightTheme.primary),
                  ),
                  onSelected: (ColorLabel? color) {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                  dropdownMenuEntries: ColorLabel.values
                      .map<DropdownMenuEntry<ColorLabel>>((ColorLabel color) {
                    return DropdownMenuEntry<ColorLabel>(
                      value: color,
                      label: color.label,
                      leadingIcon: const Icon(
                        Icons.add,
                        color: LightTheme.textVariant,
                        size: 20.09,
                      ),
                      trailingIcon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: LightTheme.textVariant,
                        size: 20.09,
                      ),
                      enabled: color.label != 'Grey',
                      style: MenuItemButton.styleFrom(
                        foregroundColor: LightTheme.text,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
