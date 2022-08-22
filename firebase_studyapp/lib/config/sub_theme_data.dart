import 'package:firebase_studyapp/config/theme/app_colure.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin SubThemeData {
  TextTheme getTextItems() {
    return GoogleFonts.quicksandTextTheme(
      const TextTheme(
          bodyText1: TextStyle(fontWeight: FontWeight.w400),
          bodyText2: TextStyle(fontWeight: FontWeight.w400)),
    );
  }

  IconThemeData getItemTheme() {
    return const IconThemeData(color: onSurfaceColure, size: 15);
  }
}
