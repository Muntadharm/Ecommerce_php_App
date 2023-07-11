import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLoginPage();
}

class SuccessSignUpControllerIpm extends SuccessSignUpController {
  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoute.login);
  }
}
