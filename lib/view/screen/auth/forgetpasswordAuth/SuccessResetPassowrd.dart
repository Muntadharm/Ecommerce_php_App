import 'package:ecommers_php_app/controller/auth/SuccessResetpassowrd.dart';
import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/view/widget/auth/CustomButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassowrd extends StatelessWidget {
  const SuccessResetPassowrd({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPassowrdControllerIpm controller =
        Get.put(SuccessResetPassowrdControllerIpm());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text("41".tr,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: AppColor.Grey)),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Center(
                child: Icon(
                  Icons.check_circle_outline,
                  color: AppColor.primerycolor,
                  size: 200,
                ),
              ),
              Text(
                "42".tr,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Text("43".tr, style: Theme.of(context).textTheme.displayLarge),
              const Spacer(),
              SizedBox(
                  width: double.infinity,
                  child: CustomButtonAuth(
                      text: "44".tr,
                      onPrassed: () {
                        controller.goToLoginPage();
                      })),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
