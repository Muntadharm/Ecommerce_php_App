import 'package:ecommers_php_app/core/funcation/validinput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String labletext;
  final String hinttext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  const CustomTextFormAuth(
      {super.key,
      this.onTapIcon,
      this.obscureText,
      required this.labletext,
      required this.hinttext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false
            ? false
            : true, //make passowrd invisible
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
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
            suffixIcon: InkWell(onTap: onTapIcon, child: Icon(iconData)
                //use inkwell to can prass on

                ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
