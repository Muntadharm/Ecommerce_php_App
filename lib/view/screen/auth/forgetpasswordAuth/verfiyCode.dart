import 'package:ecommers_php_app/controller/auth/fogetpassowrd_controller.dart';
import 'package:ecommers_php_app/controller/auth/verfiycode_controller.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextBodyAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomTextformAuth.dart';
import 'package:ecommers_php_app/view/widget/auth/CusttemTitleAuth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:get/get.dart';

class VerfiyCode extends StatelessWidget {
  VerfiyCode({super.key});

  VerfiyCodeControllerImp controller = Get.put(VerfiyCodeControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text('Verification Code',
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
                  text: 'Check Code',
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextBodyAuth(
                  text:
                      'Plase Enter The Digit Code Sent To muntadhar@gmail.com',
                ),
                const SizedBox(
                  height: 30,
                ),
                OtpTextField(
                  fieldWidth: 60.0,
                  borderRadius: BorderRadius.circular(16),
                  numberOfFields: 5,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goToRessetPassowrd();
                  }, // end onSubmit
                ),
                // CustomButtonAuth(
                //   text: 'Check ',
                //   onPrassed: () {},
                // ),
              ],
            )));
  }
}
