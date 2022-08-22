import 'package:firebase_studyapp/config/theme/app_colure.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient(context)),
        child: Center(
          child: Image.asset(
            "assets/images/app_splash_logo.png",
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
