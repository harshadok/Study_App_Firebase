import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data_uploder_screen.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(GetMaterialApp(
    home: DataUploderClass(),
  ));
}
