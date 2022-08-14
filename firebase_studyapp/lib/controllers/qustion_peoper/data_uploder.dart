import 'dart:convert';

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

  Future uploadData() async {
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

      qustionPapers
          .add(QustionPaperModel.fromJson(jsonDecode(stringPaperContent)));
    }
  }
}
