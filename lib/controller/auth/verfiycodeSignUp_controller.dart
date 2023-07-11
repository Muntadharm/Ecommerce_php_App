import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeSignUPController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerfiyCodeSignUPControllerImp extends VerfiyCodeSignUPController {
  //late TextEditingController code;
  late String verifycode;
  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    //code = TextEditingController();

    super.onInit();
  }
}
