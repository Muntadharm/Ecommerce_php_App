import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode();
  goToRessetPassowrd();
}

class VerfiyCodeControllerImp extends VerfiyCodeController {
  //late TextEditingController code;
  late String verifycode;
  @override
  checkCode() {}

  @override
  goToRessetPassowrd() {
    Get.offNamed(AppRoute.resetPassowrd);
  }

  @override
  void onInit() {
    //code = TextEditingController();

    super.onInit();
  }
}
