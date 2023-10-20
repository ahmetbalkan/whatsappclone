import 'package:flutter/services.dart';

class PhoneMaskFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    if (newValue.text.length <= oldValue.text.length) {
      // Delete detected

      // Here, simply return the old value without the last character
      return TextEditingValue(
        text: oldValue.text.substring(0, oldValue.text.length - 1),
        selection: newValue.selection,
      );
    }

    // Handle adding characters
    if (newText.length == 3 || newText.length == 7 || newText.length == 10) {
      newText = '$newText-';
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
