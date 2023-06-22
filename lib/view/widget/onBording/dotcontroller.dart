import 'package:ecommers_php_app/controller/OnBordingController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustemDotcontrollerOnBording extends StatelessWidget {
  const CustemDotcontrollerOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBordingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBordingList.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 900),
              width: controller.currentPage == index ? 20 : 5,
              //dot will be 20 at cureentpage
              height: 6,
              margin: const EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  color: AppColor.primerycolor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
