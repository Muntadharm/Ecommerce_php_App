import 'package:ecommers_php_app/core/services/services.dart';
import 'package:ecommers_php_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class localController extends GetxController {
  Locale? language;

  MyServises myServises = Get.find();

  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myServises.sharedPreferences.setString('lang', langcode);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sheardpreflanguage = myServises.sharedPreferences.getString('lang');

    if (sheardpreflanguage == 'ar') {
      language = const Locale('ar');
    } else if (sheardpreflanguage == 'en') {
      language = const Locale('en');
    } else {
      // if device not engilsh or arabic take the languge of device
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
