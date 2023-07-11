import 'package:ecommers_php_app/controller/OnBordingController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustemSliderOnBording extends GetView<OnBordingControllerImp> {
  const CustemSliderOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        //print(value);
        controller.onPageChanged(value); // take the number of page
      },
      itemCount: onBordingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBordingList[i].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColor.black),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            onBordingList[i].image!,
            //width: 320,
            height: Get.width / 1.3,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(onBordingList[i].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 2,
                    fontSize: 20,
                    color: AppColor.Grey)),
          ),
        ],
      ),
    );
  }
}
