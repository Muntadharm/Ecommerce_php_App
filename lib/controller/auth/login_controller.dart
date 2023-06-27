import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  Login();
  goToSignup();
  goToForgetPassowd();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  Login() {}

  @override
  goToSignup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassowd() {
    Get.toNamed(AppRoute.forgetPassowrd);
  }
}
