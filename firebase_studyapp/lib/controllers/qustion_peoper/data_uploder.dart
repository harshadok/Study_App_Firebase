import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_studyapp/firebase_ref/loadind_status.dart';
import 'package:firebase_studyapp/firebase_ref/refrences.dart';
import 'package:firebase_studyapp/models/qustion_paper_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DataUploder extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  final loadingstatus = LoadingStatus.loading.obs;

  Future uploadData() async {
    loadingstatus.value = LoadingStatus.loading;
    final fireStore = FirebaseFirestore.instance;
    final mainfsetContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");

    final Map<String, dynamic> manifestMap = json.decode(mainfsetContent);
    //load json file and print path
    final paperinAssets = manifestMap.keys
        .where((element) =>
            element.startsWith("assets/DB/papers") && element.contains(".json"))
        .toList();

    List<QustionPaperModel> qustionPapers = [];
    for (var paper in paperinAssets) {
      String stringPaperContent = await rootBundle.loadString(paper);
      // print(stringPaperContent);
      //added datas in to model qustion paper
      qustionPapers
          .add(QustionPaperModel.fromJson(jsonDecode(stringPaperContent)));
    }

    var batch = fireStore.batch();

    for (var paper in qustionPapers) {
      batch.set(qustionPeoperRF.doc(paper.id), {
        'title': paper.title,
        'image_url': paper.imageUrl,
        'discription': paper.description,
        'time_second0': paper.timeSeconds,
        'questions_count': paper.questions == null ? 0 : paper.questions!.length
      });

      for (var qustions in paper.questions!) {
        final qustionPath =
            qustionRF(paperId: paper.id, qustionId: qustions.id);
        batch.set(qustionPath, {
          'question': qustions.question,
          'correct_answer': qustions.correctAnswer
        });

        for (var answers in qustions.answers) {
          batch.set(qustionPath.collection('answers').doc(answers.identifier),
              {'identifire': answers.identifier, 'answer': answers.answer});
        }
      }
    }

    await batch.commit();

    loadingstatus.value = LoadingStatus.completed;
  }
}
