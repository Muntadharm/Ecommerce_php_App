import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String labletext;
  final String hinttext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  const CustomTextFormAuth(
      {super.key,
      required this.labletext,
      required this.hinttext,
      required this.iconData,
      this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
            floatingLabelBehavior:
                FloatingLabelBehavior.always, //label always be in behavior,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                labletext,
                style: const TextStyle(fontSize: 25),
              ),
            ),
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            suffixIcon: Icon(iconData),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
