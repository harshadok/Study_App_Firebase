import 'package:firebase_studyapp/screen/introduction/introduction.dart';
import 'package:firebase_studyapp/screen/spalsh/splash_screen.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(name: "/introduction", page: () => const IntroductionScreen())
      ];
}
