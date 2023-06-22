import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServises extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServises> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialServieses() async {
  await Get.putAsync(() => MyServises().init());
}
