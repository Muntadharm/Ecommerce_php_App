import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPassowrdController extends GetxController {
  goToLoginPage();
}

class SuccessResetPassowrdControllerIpm extends SuccessResetPassowrdController {
  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoute.login);
  }
}
