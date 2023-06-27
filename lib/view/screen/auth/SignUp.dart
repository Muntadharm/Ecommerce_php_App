import 'package:ecommers_php_app/controller/auth/signup_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
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
  SignUp({super.key});

  SignUpControllerImp controller = Get.put(SignUpControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text('Sign Up',
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
                  text: 'Welcome Back',
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextBodyAuth(
                  text:
                      'Sign Up With Your Email and Passward OR Continue With Social Media',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.username,
                  labletext: 'User Name',
                  hinttext: 'Enter your User Name',
                  iconData: Icons.person_outline_outlined,
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                CustomTextFormAuth(
                  mycontroller: controller.email,
                  labletext: 'E-mail',
                  hinttext: 'Enter your E-mail',
                  iconData: Icons.email_outlined,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.phone,
                  labletext: 'Phone',
                  hinttext: 'Enter Your Phone Number',
                  iconData: Icons.phone_android_outlined,
                ),
                CustomTextFormAuth(
                  mycontroller: controller.password,
                  labletext: 'password',
                  hinttext: 'Enter Your password',
                  iconData: Icons.lock_clock_outlined,
                ),

                CustomButtonAuth(
                  text: 'Sign Up',
                  onPrassed: () {
                    controller.signUp();
                  },
                ),
                CustemTextSignUpOrSignIn(
                    textone: '"Do You have Account ',
                    texttwo: "Sign In",
                    onTap: () {
                      controller.goToSignIn();
                    })
              ],
            )));
  }
}
