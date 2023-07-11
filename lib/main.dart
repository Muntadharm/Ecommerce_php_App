import 'package:ecommers_php_app/binding.dart';
import 'package:ecommers_php_app/core/localization/changelocal.dart';
import 'package:ecommers_php_app/core/localization/translation.dart';
import 'package:ecommers_php_app/core/services/services.dart';
import 'package:ecommers_php_app/routes.dart';
import 'package:ecommers_php_app/view/screen/auth/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServieses();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: controller.appTheme,
      // home: const Language(),
      //routes: routes,
      getPages: routes,
      initialBinding: MyBinding(),
      //Test(),
    );
  }
}
