import 'package:ecommers_php_app/controller/auth/fogetpassowrd_controller.dart';
import 'package:ecommers_php_app/controller/auth/resstpasssord_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/core/funcation/validinput.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ressetPassowrd extends StatelessWidget {
  RessetPassowrdControllerImp controller =
      Get.put(RessetPassowrdControllerImp());

  ressetPassowrd({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text("35".tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.Grey)),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              CusttemTitleAuth(
                text: "36".tr,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                text: "37".tr,
              ),
              const SizedBox(
                height: 30,
              ),
              GetBuilder<RessetPassowrdControllerImp>(
                builder: (controller) => CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 8, 25, 'passaword');
                  },
                  obscureText: controller.isshowpassowrd,
                  onTapIcon: () => controller.showPassowrd(),
                  mycontroller: controller.password,
                  labletext: '22'.tr,
                  hinttext: '15'.tr,
                  iconData: Icons.lock_clock_outlined,
                ),
              ),
              GetBuilder<RessetPassowrdControllerImp>(
                builder: (controller) => CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 8, 25, 'passaword');
                  },
                  obscureText: controller.isshowpassowrd,
                  onTapIcon: () => controller.showPassowrd(),
                  mycontroller: controller.rePassword,
                  labletext: "38".tr,
                  hinttext: "39".tr,
                  iconData: Icons.lock_clock_outlined,
                ),
              ),
              CustomButtonAuth(
                text: "40".tr,
                onPrassed: () {
                  controller.ressetpassowrd();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
