import 'package:ecommers_php_app/controller/auth/login_controller.dart';
import 'package:ecommers_php_app/controller/auth/signup_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/core/funcation/alertExitApp.dart';
import 'package:ecommers_php_app/core/funcation/validinput.dart';
import 'package:ecommers_php_app/view/widget/auth/CustemTextSignUpOrSignIn.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    // Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text('17'.tr,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: AppColor.Grey)),
        ),
        body: WillPopScope(
          onWillPop: alertXExitApp,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  CusttemTitleAuth(
                    text: '12'.tr,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextBodyAuth(text: "20".tr),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFormAuth(
                    isNumber: false,
                    mycontroller: controller.username,
                    labletext: "26".tr,
                    hinttext: "27".tr,
                    iconData: Icons.person_outline_outlined,
                    valid: (val) {
                      return validInput(val!, 4, 20, 'username');
                    },
                  ),
                  // const SizedBox(
                  //   height: 30,
                  // ),
                  CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 100, 'email');
                    },
                    mycontroller: controller.email,
                    labletext: '21'.tr,
                    hinttext: '14'.tr,
                    iconData: Icons.email_outlined,
                  ),
                  CustomTextFormAuth(
                    isNumber: true,
                    valid: (val) {
                      return validInput(val!, 10, 16, 'phone');
                    },
                    mycontroller: controller.phone,
                    labletext: '23'.tr,
                    hinttext: "24".tr,
                    iconData: Icons.phone_android_outlined,
                  ),
                  GetBuilder<SignUpControllerImp>(
                    builder: (controller) => CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 8, 30, 'password');
                      },
                      obscureText: controller.isshowpassowrd,
                      onTapIcon: () => controller.showPassowrd(),
                      mycontroller: controller.password,
                      labletext: '22'.tr,
                      hinttext: '14'.tr,
                      iconData: Icons.lock_clock_outlined,
                    ),
                  ),

                  CustomButtonAuth(
                    text: "19".tr,
                    onPrassed: () {
                      controller.signUp();
                    },
                  ),
                  CustemTextSignUpOrSignIn(
                      textone: "25".tr,
                      texttwo: "17".tr,
                      onTap: () {
                        controller.goToSignIn();
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
