import 'dart:math';

import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';

import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goToSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;
  @override
  checkEmail() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
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
