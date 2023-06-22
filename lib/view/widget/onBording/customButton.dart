import 'package:ecommers_php_app/controller/OnBordingController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButtonOnBording extends GetView<OnBordingControllerImp> {
  final String text;
  final Color color;
  final Color? textcolor;

  CustomButtonOnBording(
      {required this.text, required this.color, this.textcolor});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () {
        controller.next();
      },
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
      textColor: textcolor,
      color: color,
      child: Text(
        text,
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}
