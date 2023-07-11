import 'package:ecommers_php_app/controller/auth/fogetpassowrd_controller.dart';
import 'package:ecommers_php_app/controller/auth/login_controller.dart';
import 'package:ecommers_php_app/controller/auth/resstpasssord_controller.dart';
import 'package:ecommers_php_app/controller/auth/signup_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    Get.lazyPut(() => ForgetPassowrdControllerImp(), fenix: true);
    Get.lazyPut(() => RessetPassowrdControllerImp(), fenix: true);
  }
}
