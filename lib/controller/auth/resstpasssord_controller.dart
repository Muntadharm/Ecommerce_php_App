import 'dart:math';

import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';

import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RessetPassowrdController extends GetxController {
  ressetpassowrd();
  goToSuccessResetpassowrd();
}

class RessetPassowrdControllerImp extends RessetPassowrdController {
  late TextEditingController password;
  late TextEditingController rePassword;
  @override
  ressetpassowrd() {}

  @override
  goToSuccessResetpassowrd() {
    Get.offNamed(AppRoute.successRessetPasssowrd);
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    rePassword.dispose();
    password.dispose();

    super.dispose();
  }
}
