import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertXExitApp() {
  Get.defaultDialog(title: "53".tr, middleText: "52".tr, actions: [
    ElevatedButton(
      onPressed: () {
        exit(0);
      },
      child: Text("54".tr),
    ),
    ElevatedButton(
      onPressed: () {
        Get.back();
      },
      child: Text("55".tr),
    )
  ]);

  return Future.value(true);
}
