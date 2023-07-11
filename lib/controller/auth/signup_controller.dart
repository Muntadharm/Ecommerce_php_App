import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
  // goToCheckEmail();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  bool isshowpassowrd = true;
  showPassowrd() {
    isshowpassowrd = isshowpassowrd == true ? false : true;
    update();
  }

  signUp() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRoute.verfiyCodeSignUp);
      // Get.delete<SignUpControllerImp>(); //to delet data from memory
      // or use lazyput
    } else {
      print('not valid');
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }
}
