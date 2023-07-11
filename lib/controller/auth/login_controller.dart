import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToForgetPassowd();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassowrd = true;

  showpassowrd() {
    isshowpassowrd = isshowpassowrd == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print('valid');
    } else {
      print('not valid');
    }
  }

  @override
  goToSignup() {
    Get.offNamed(AppRoute.signup);
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
