
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SuccessResetPassowrd extends StatelessWidget {
  const SuccessResetPassowrd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "success Resset Passowrd",
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
