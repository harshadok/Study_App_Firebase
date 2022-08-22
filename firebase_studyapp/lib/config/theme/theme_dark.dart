import 'package:firebase_studyapp/config/sub_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const primaryDarkColur = Color.fromARGB(255, 9, 44, 61);
const primaryDarkColurSecond = Color.fromARGB(255, 168, 208, 228);
const Color mainTextColor = Colors.white;

class DarkTheme with SubThemeData {
  buildDarkTheme() {
    final ThemeData sysytemDarkTheme = ThemeData.dark();

    return sysytemDarkTheme.copyWith(
        iconTheme: getItemTheme(),
        textTheme: getTextItems()
            .apply(bodyColor: mainTextColor, displayColor: mainTextColor));
  }
}
