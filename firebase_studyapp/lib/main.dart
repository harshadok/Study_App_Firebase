import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_studyapp/bindigs/intial_bindings.dart';
import 'package:firebase_studyapp/controllers/theme_controller.dart';
import 'package:firebase_studyapp/routes/app_routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  InitiolBiniding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.find<ThemeController>().lightTheme,
      getPages: AppRoutes.routes(),
    );
  }
}
