import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class ForgetPassowrdController extends GetxController {
  checkEmail();
  goToVerfiyCode();
}

class ForgetPassowrdControllerImp extends ForgetPassowrdController {
  late TextEditingController email;
  @override
  checkEmail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verfiyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
