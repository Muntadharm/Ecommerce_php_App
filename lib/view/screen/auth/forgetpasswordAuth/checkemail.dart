import 'package:ecommers_php_app/controller/auth/checkemail.dart';
import 'package:ecommers_php_app/controller/auth/fogetpassowrd_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  CheckEmail({super.key});

  CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text('CheckEmail',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: AppColor.Grey)),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: ListView(
              children: [
                const CusttemTitleAuth(text: "Success Sign Up "),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextBodyAuth(
                  text:
                      'Please Enter your Email Address To Recive A Verififaction Code ',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.email,
                  labletext: 'Email',
                  hinttext: 'Enter Your Email',
                  iconData: Icons.email_outlined,
                ),
                CustomButtonAuth(
                  text: 'Check Email',
                  onPrassed: () {
                    controller.goToSuccessSignUp();
                  },
                ),
              ],
            )));
  }
}
