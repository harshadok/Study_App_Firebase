import 'package:firebase_studyapp/controllers/qustion_peoper/data_uploder.dart';
import 'package:firebase_studyapp/firebase_ref/loadind_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataUploderClass extends StatelessWidget {
  DataUploderClass({Key? key}) : super(key: key);
  DataUploder controller = Get.put(DataUploder());

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Center(
            child: Obx((() => Text(
                controller.loadingstatus.value == LoadingStatus.completed
                    ? " Loading Completed"
                    : "uploading")))));
  }
}
