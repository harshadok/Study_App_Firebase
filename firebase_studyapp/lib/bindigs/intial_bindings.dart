import 'package:firebase_studyapp/controllers/auth_controler/auth_controller.dart';
import 'package:get/get.dart';

class InitiolBiniding implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
  }
}
