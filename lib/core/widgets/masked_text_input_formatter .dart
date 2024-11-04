import 'package:flutter/services.dart';
import 'package:intl/intl.dart' ;

class MaskedTextInputFormatter extends TextInputFormatter {

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(
        text: newValue.text,
        selection: TextSelection.collapsed(offset: newValue.text.length),
      );
    }

    final int value = int.parse(newValue.text.replaceAll(RegExp(r','), ''));
    final formattedValue = NumberFormat('#,###').format(value);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }
}