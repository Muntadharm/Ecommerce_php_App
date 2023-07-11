import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

abstract class RessetPassowrdController extends GetxController {
  ressetpassowrd();
  // goToSuccessResetpassowrd();
}

class RessetPassowrdControllerImp extends RessetPassowrdController {
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isshowpassowrd = true;
  showPassowrd() {
    isshowpassowrd = isshowpassowrd == true ? false : true;
    update();
  }

  @override
  ressetpassowrd() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRoute.successRessetPasssowrd);
      //Get.delete<RessetPassowrdControllerImp>();
    } else {
      print('valid input ');
    }
  }

  // @override
  // goToSuccessResetpassowrd() {
  //   Get.offNamed(AppRoute.successRessetPasssowrd);
  // }

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
