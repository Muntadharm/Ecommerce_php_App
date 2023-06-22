import 'package:ecommers_php_app/controller/OnBordingController.dart';
import 'package:ecommers_php_app/data/datasource/static/static.dart';
import 'package:ecommers_php_app/view/widget/onBording/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:get/get.dart';

import '../widget/onBording/custemslider.dart';
import '../widget/onBording/customButton.dart';

class onBording extends StatelessWidget {
  const onBording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 3, child: CustemSliderOnBording()),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const CustemDotcontrollerOnBording(),
                    const Spacer(
                      flex: 2,
                    ),
                    CustomButtonOnBording(
                      text: 'Continue',
                      color: AppColor.primerycolor,
                      textcolor: AppColor.white,
                    ),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
