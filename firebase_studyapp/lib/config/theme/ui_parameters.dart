import 'package:flutter/material.dart';

class UiParameters {
  static bool isDarkmode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
