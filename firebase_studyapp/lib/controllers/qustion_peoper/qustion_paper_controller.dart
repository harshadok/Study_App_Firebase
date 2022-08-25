import 'package:firebase_studyapp/service/firebase_storage_service.dart';
import 'package:get/get.dart';

class QustionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName = ["physics", 'physics', 'physics', 'physics'];
    try {
      for (var img in imgName) {
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(img);
        allPaperImages.add(imgUrl!);
      }
    } catch (e) {
      //chnaged my self
      print(e);
    }
  }
}
