import 'package:firebase_studyapp/config/theme/app_colure.dart';
import 'package:firebase_studyapp/widgets/appsircle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: mainGradient(context)),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "This is a study app.scale it",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 29, 28, 25)),
            ),
            SizedBox(
              height: 40,
            ),
            AppCircleButton(
              chaild: Icon(Icons.arrow_forward_ios),
              // onTap: () => null,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    ));
  }
}
