import 'package:firebase_studyapp/config/sub_theme_data.dart';
import 'package:flutter/material.dart';

const primarylightColur = Color.fromARGB(255, 89, 181, 227);
const primarylightColurSecond = Color.fromARGB(255, 243, 46, 157);

const Color mainTextColure = Color.fromARGB(255, 23, 21, 22);

class LightTheme with SubThemeData {
  buildlightTheme() {
    final ThemeData sysytemLightTheme = ThemeData.light();
    return sysytemLightTheme.copyWith(
        iconTheme: getItemTheme(),
        textTheme: getTextItems()
            .apply(bodyColor: mainTextColure, displayColor: mainTextColure));
  }
}
