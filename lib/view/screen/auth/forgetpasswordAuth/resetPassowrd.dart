
import 'package:ecommers_php_app/controller/auth/fogetpassowrd_controller.dart';
import 'package:ecommers_php_app/controller/auth/resstpasssord_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RessetPassowrd extends StatelessWidget {
  RessetPassowrdControllerImp controller =
      Get.put(RessetPassowrdControllerImp());

  RessetPassowrd({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text('Resset Passowrd',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: AppColor.Grey)),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: ListView(
              children: [
                const CusttemTitleAuth(
                  text: 'New passowrd',
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextBodyAuth(
                  text: 'Plase Enter New Passowrd ',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.password,
                  labletext: 'password',
                  hinttext: 'Enter Your password',
                  iconData: Icons.lock_clock_outlined,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.rePassword,
                  labletext: 'Re Enter password',
                  hinttext: 'Re Enter Your password',
                  iconData: Icons.lock_clock_outlined,
                ),
                CustomButtonAuth(
                  text: 'Save',
                  onPrassed: () {
                    controller.goToSuccessResetpassowrd();
                  },
                ),
              ],
            )));
  }
}
