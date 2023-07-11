import 'package:ecommers_php_app/controller/auth/fogetpassowrd_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/core/funcation/validinput.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ForgetPassowrd extends StatelessWidget {
  // ForgetPassowrdControllerImp controller =
  //   Get.put(ForgetPassowrdControllerImp());

  const ForgetPassowrd({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text("29".tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.Grey)),
      ),
      body: GetBuilder<ForgetPassowrdControllerImp>(
          builder: (controller) => Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      CusttemTitleAuth(text: "28".tr),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextBodyAuth(
                        text: "30".tr,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 5, 20, 'email');
                        },
                        mycontroller: controller.email,
                        labletext: '21'.tr,
                        hinttext: '14'.tr,
                        iconData: Icons.email_outlined,
                      ),
                      CustomButtonAuth(
                        text: "31".tr,
                        onPrassed: () {
                          controller.checkEmail();
                        },
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
