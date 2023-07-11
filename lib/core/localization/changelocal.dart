import 'package:ecommers_php_app/core/constant/AppTheme.dart';
import 'package:ecommers_php_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServises myServises = Get.find();
  ThemeData appTheme = EnglishTheme;

  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myServises.sharedPreferences.setString('lang', langcode);
    appTheme = langcode == 'en' ? EnglishTheme : ArabicTheme;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sheardpreflanguage = myServises.sharedPreferences.getString('lang');

    if (sheardpreflanguage == 'ar') {
      language = const Locale('ar');
      appTheme = ArabicTheme;
    } else if (sheardpreflanguage == 'en') {
      language = const Locale('en');
      appTheme = EnglishTheme;
    } else {
      // if device not engilsh or arabic take the languge of device
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = EnglishTheme;
    }
    super.onInit();
  }
}
