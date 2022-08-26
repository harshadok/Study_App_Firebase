import 'package:firebase_studyapp/models/qustion_paper_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/qustion_peoper/qustion_paper_controller.dart';

class QustionCard extends StatelessWidget {
  const QustionCard({Key? key, required this.model}) : super(key: key);
  final QustionPaperModel model;

  @override
  Widget build(BuildContext context) {
    QustionPaperController qustionpapercontroller = Get.find();
    return Stack(
      children: [
        Row(
          children: [
            // ClipRRect(
            //     child: Container(
            //   color: Colors.red,
            //   height: 200,
            //   width: 200,
            //   // he chnages some more things here that are added new dependecie CHACHEDNETWORK IMAGE TO SAVE IMAGE AND SHOW CIRCLEARPROGRESS BAR VEDIO LOCATION :4:23
            //   child: FadeInImage(
            //     image:
            //       //  NetworkImage(qustionpapercontroller.allPapers),
            //     placeholder:
            //         const AssetImage("assets/images/app_splash_logo.png"),
            //   ),
            // )),
          ],
        )
      ],
    );
  }
}
