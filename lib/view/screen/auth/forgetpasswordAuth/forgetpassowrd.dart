import 'package:ecommers_php_app/controller/auth/fogetpassowrd_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ForgetPassowrd extends StatelessWidget {
  ForgetPassowrdControllerImp controller =
      Get.put(ForgetPassowrdControllerImp());

  ForgetPassowrd({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text('Forget Passowrd',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: AppColor.Grey)),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: ListView(
              children: [
                const CusttemTitleAuth(text: "Ckeck Email"),
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
                    controller.goToVerfiyCode();
                  },
                ),
              ],
            )));
  }
}
