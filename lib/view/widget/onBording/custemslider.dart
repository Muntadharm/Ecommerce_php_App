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
          Text(onBordingList[i].title!,
              style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            onBordingList[i].image!,
            width: 320,
            height: 340,
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
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
