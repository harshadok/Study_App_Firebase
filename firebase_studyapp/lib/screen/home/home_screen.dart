import 'package:firebase_studyapp/controllers/qustion_peoper/qustion_paper_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QustionPaperController qustionpapercontroller = Get.find();

    return Scaffold(
        body: Obx(() => ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                    child: SizedBox(
                  height: 200,
                  width: 200,
                  child: FadeInImage(
                    image: NetworkImage(
                        qustionpapercontroller.allPaperImages[index]),
                    placeholder:
                        const AssetImage("assets/images/app_splash_logo.png"),
                  ),
                ));
              },
              separatorBuilder: (BuildContext context, int inddex) {
                return const SizedBox();
              },
              itemCount: qustionpapercontroller.allPaperImages.length,
            )));
  }
}
