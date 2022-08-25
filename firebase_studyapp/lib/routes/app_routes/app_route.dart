import 'package:firebase_studyapp/controllers/qustion_peoper/qustion_paper_controller.dart';
import 'package:firebase_studyapp/screen/home/home_screen.dart';
import 'package:firebase_studyapp/screen/introduction/introduction.dart';
import 'package:firebase_studyapp/screen/spalsh/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(name: "/introduction", page: () => const IntroductionScreen()),
        GetPage(
            name: "/Home",
            page: () => const HomePage(),
            binding: BindingsBuilder(() {
              Get.lazyPut((() => QustionPaperController()));
            }))
      ];
}
