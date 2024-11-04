import 'package:ios_samx/core/constant/app_style.dart';
import 'package:ios_samx/core/constant/theme/color_theme_provider.dart';
import 'package:ios_samx/core/constant/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatefulWidget {
  final String title;
  final Widget body;
  final void Function()? backButtonPressed;


  const CustomAlertDialog(
      {super.key,
      required this.title,
      required this.body,
      required this.backButtonPressed
      });

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme<CustomTheme>();

    return AlertDialog(
      backgroundColor: colorTheme.bg,
      scrollable: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      contentPadding: const EdgeInsets.all(0.0),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration:  BoxDecoration(
                color: colorTheme.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: widget.backButtonPressed,
                      icon:  Icon(
                        Icons.arrow_back,
                        color:  colorTheme.textInverse,
                      )),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    widget.title,
                    style: AppStyle.size14Weight600
                        .copyWith(color: colorTheme.textInverse),
                  ),
                ],
              ),
            ),
            widget.body
          ],
        ),
      )
    );
  }
}
