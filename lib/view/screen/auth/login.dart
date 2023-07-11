import 'package:ecommers_php_app/controller/auth/login_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/core/funcation/alertExitApp.dart';
import 'package:ecommers_php_app/core/funcation/validinput.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustemTextSignUpOrSignIn.dart';
import 'package:ecommers_php_app/view/widget/auth/logo.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text('11'.tr,
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
                const LogoAuth(),
                CusttemTitleAuth(
                  text: "12".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextBodyAuth(
                  text: '13'.tr,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, 'email');
                  },
                  labletext: "21".tr,
                  hinttext: "14".tr,
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email,
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormAuth(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 25, 'password');
                    },
                    obscureText: controller.isshowpassowrd,
                    onTapIcon: () {
                      controller.showpassowrd();
                    },
                    labletext: '22'.tr,
                    hinttext: "15".tr,
                    iconData: Icons.lock_clock_outlined,
                    mycontroller: controller.password,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassowd();
                  },
                  child: Text(
                    "16".tr,
                    textAlign: TextAlign.end,
                  ),
                ),

                CustomButtonAuth(
                  text: "17".tr,
                  onPrassed: () {
                    controller.login();
                  },
                ),
                const SizedBox(
                  height: 30,
                ),

                CustemTextSignUpOrSignIn(
                    textone: "18".tr,
                    texttwo: "19".tr,
                    onTap: () {
                      controller.goToSignup();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
