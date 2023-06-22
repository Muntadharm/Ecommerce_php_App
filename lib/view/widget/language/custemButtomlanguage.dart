import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustemButtenLanguage extends StatelessWidget {
  final String textbutten;
  void Function()? onprassed;
  CustemButtenLanguage({super.key, required this.textbutten, this.onprassed});

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      color: AppColor.blueAccent,
      child: MaterialButton(
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: onprassed,
        child: Text(
          textbutten,
          style: const TextStyle(
              color: AppColor.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
