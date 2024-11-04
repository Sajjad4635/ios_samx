import 'package:ios_samx/core/base_widget/app_bottom_sheet/index.dart';
import 'package:flutter/material.dart';

Future showAppBottomSheet({
  required BuildContext context,
  required Widget child,
}) =>
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.white,
        useSafeArea: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        builder: (_) => AppBottomSheet(child: child));
