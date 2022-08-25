import 'package:firebase_studyapp/controllers/qustion_peoper/qustion_paper_controller.dart';
import 'package:firebase_studyapp/screen/qustion_card.dart';
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
                return QustionCard(
                  model: qustionpapercontroller.allPapers[index],
                  index: index,
                );
              },
              separatorBuilder: (BuildContext context, int inddex) {
                return const SizedBox();
              },
              itemCount: qustionpapercontroller.allPaperImages.length,
            )));
  }
}
