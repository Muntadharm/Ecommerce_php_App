import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  // Getmiddleware :priority and rediect

  @override
  int? get priority => 1; // less number high priority

  MyServises myServises = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServises.sharedPreferences.getString("onbording") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
