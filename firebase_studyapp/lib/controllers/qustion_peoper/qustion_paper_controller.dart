import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_studyapp/firebase_ref/refrences.dart';
import 'package:firebase_studyapp/models/qustion_paper_model.dart';
import 'package:firebase_studyapp/service/firebase_storage_service.dart';
import 'package:get/get.dart';

class QustionPaperController extends GetxController {
  final allPapers = <QustionPaperModel>[].obs;
  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    try {
      QuerySnapshot<Map<String, dynamic>> data = await qustionPeoperRF.get();
      final paperList = data.docs
          .map((paper) => QustionPaperModel.fromSnapshot(paper))
          .toList();
      allPapers.assignAll(paperList);

      //he added some chnges here but i dont chnage do eney......................................time of the vedio =4:19
      for (var paper in paperList) {
        final imgUrl =
            await Get.find<FirebaseStorageService>().getImage(paper.title);
        paper.imageUrl = imgUrl;
      }
      allPapers.assignAll(paperList);
    } catch (e) {
      //chnaged my self
      print(e);
    }
  }
}
