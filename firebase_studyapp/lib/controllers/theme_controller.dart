import 'package:firebase_studyapp/config/theme/theme_dark.dart';
import 'package:firebase_studyapp/config/theme/theme_light.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ThemeController extends GetxController {
  late ThemeData _darkTheme;
  late ThemeData _lightTheme;
  @override
  void onInit() {
    initilizeThemeData();
    super.onInit();
  }

  initilizeThemeData() {
    _darkTheme = DarkTheme().buildDarkTheme();
    _lightTheme = LightTheme().buildlightTheme();
  }

  ThemeData get darkTheme => _darkTheme;
  ThemeData get lightTheme => _lightTheme;
}
