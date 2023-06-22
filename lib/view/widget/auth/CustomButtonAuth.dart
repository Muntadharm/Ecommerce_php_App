import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.text, this.onPrassed});
  final String text;
  final void Function()? onPrassed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 15),
        onPressed: onPrassed,
        color: AppColor.primerycolor,
        textColor: AppColor.white,
        child: Text(
          text,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
