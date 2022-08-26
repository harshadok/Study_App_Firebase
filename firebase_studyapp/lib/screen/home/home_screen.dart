import 'package:cached_network_image/cached_network_image.dart';
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
                    width: 200,
                    height: 200,
                    child: CachedNetworkImage(
                      imageUrl:
                          qustionpapercontroller.allPapers[index].imageUrl!,
                      placeholder: (contex, url) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      errorWidget: ((context, url, error) =>
                          Image.asset("assets/images/app_splash_logo.png")),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int inddex) {
                return const SizedBox();
              },
              itemCount: qustionpapercontroller.allPapers.length,
            )));
  }
}
