import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/TextSignUp.dart';
import 'package:ecommers_php_app/view/widget/auth/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text('Sign In',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: AppColor.Grey)),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: ListView(
              children: [
                const LogoAuth(),
                const CusttemTitleAuth(
                  text: 'Welcome Back',
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextBodyAuth(
                  text:
                      'Sign In With Your Email and Passward OR Continue With Social Media',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextFormAuth(
                  labletext: 'Email',
                  hinttext: 'Enter your E-mail',
                  iconData: Icons.email_outlined,
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                const CustomTextFormAuth(
                  labletext: 'password',
                  hinttext: 'Enter your password',
                  iconData: Icons.lock_clock_outlined,
                ),
                const Text(
                  'Forgate password ?',
                  textAlign: TextAlign.end,
                ),

                CustomButtonAuth(
                  text: 'Sign In',
                  onPrassed: () {},
                ),
                const SizedBox(
                  height: 30,
                ),

                const CustemTextSignUpOrSignIn(
                  textone: "Don't have an accont ?",
                  texttwo: " Sign Up",
                ),
              ],
            )));
  }
}