import 'package:firebase_studyapp/config/theme/theme_dark.dart';
import 'package:firebase_studyapp/config/theme/theme_light.dart';
import 'package:firebase_studyapp/config/theme/ui_parameters.dart';
import 'package:flutter/material.dart';

const onSurfaceColure = Colors.white;
const mainGradinetLight = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [primarylightColur, primarylightColurSecond]);
const mainGradinetdark = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [primaryDarkColur, primaryDarkColurSecond]);

LinearGradient mainGradient(BuildContext context) {
  return UiParameters.isDarkmode(context)
      ? mainGradinetdark
      : mainGradinetLight;
}
