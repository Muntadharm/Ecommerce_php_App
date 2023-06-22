import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:ecommers_php_app/core/localization/changeelocal.dart';
import 'package:ecommers_php_app/core/localization/translation.dart';
import 'package:ecommers_php_app/core/services/services.dart';
import 'package:ecommers_php_app/routes.dart';
import 'package:ecommers_php_app/view/screen/auth/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/screen/onBording.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServieses();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    localController controller = Get.put(localController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColor.black),
              displayMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: AppColor.black),
              displaySmall: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColor.white),
              bodyLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 2,
                  fontSize: 20,
                  color: AppColor.Grey),
              bodyMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 2,
                  fontSize: 16,
                  color: AppColor.Grey))),
      home: const Language(),
      routes: routes,
    );
  }
}
