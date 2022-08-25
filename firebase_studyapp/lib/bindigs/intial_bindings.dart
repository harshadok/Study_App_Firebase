import 'package:firebase_studyapp/controllers/auth_controler/auth_controller.dart';
import 'package:firebase_studyapp/controllers/theme_controller.dart';
import 'package:get/get.dart';

import '../service/firebase_storage_service.dart';

class InitiolBiniding implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    Get.put(FirebaseStorageService());
  }
}
