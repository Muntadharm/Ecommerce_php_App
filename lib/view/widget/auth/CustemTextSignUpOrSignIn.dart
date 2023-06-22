import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class CustemTextSignUpOrSignIn extends StatelessWidget {
  const CustemTextSignUpOrSignIn(
      {super.key, required this.textone, required this.texttwo});
  final String textone;
  final String texttwo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: () {
            Get.toNamed(AppRoute.signup);
          },
          child: Text(
            texttwo,
            style: const TextStyle(
                color: AppColor.primerycolor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
