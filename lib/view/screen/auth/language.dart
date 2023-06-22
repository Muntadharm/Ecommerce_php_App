import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/core/localization/changeelocal.dart';
import 'package:ecommers_php_app/view/widget/language/custemButtomlanguage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Language extends GetView<localController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 15,
            ),
            CustemButtenLanguage(
              textbutten: 'Arabic',
              onprassed: () {
                controller.changelang('ar');
                Get.toNamed(AppRoute.OnBording);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustemButtenLanguage(
              textbutten: 'English',
              onprassed: () {
                controller.changelang('en');
                Get.toNamed(AppRoute.OnBording);
              },
            ),
          ],
        ),
      ),
    );
  }
}
