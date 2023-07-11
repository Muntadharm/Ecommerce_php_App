import 'package:ecommers_php_app/controller/auth/resstpasssord_controller.dart';
import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/core/middleware/mymiddleware.dart';
import 'package:ecommers_php_app/view/screen/OnBording.dart';
import 'package:ecommers_php_app/view/screen/auth/SignUp.dart';

import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/forgetpassowrd.dart';
import 'package:ecommers_php_app/view/screen/auth/language.dart';
import 'package:ecommers_php_app/view/screen/auth/login.dart';
import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/resetPassowrd.dart';
import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/SuccessResetPassowrd.dart';
import 'package:ecommers_php_app/view/screen/auth/scuccess%20SignUp.dart';
import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/verfiyCode.dart';
import 'package:ecommers_php_app/view/screen/auth/verfiyCodeSignup.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage Automatic delete from memory
  //Auth
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  GetPage(
    name: AppRoute.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoute.signup,
    page: () => const SignUp(),
  ),
  GetPage(
    name: AppRoute.forgetPassowrd,
    page: () => const ForgetPassowrd(),
  ),
  GetPage(
    name: AppRoute.verfiyCode,
    page: () => VerfiyCode(),
  ),
  GetPage(
    name: AppRoute.resetPassowrd,
    page: () => ressetPassowrd(),
  ),
  GetPage(
    name: AppRoute.successRessetPasssowrd,
    page: () => const SuccessResetPassowrd(),
  ),
  GetPage(
    name: AppRoute.successSignUp,
    page: () => const SuccessSignUp(),
  ),
  GetPage(
    name: AppRoute.verfiyCodeSignUp,
    page: () => VerfiyCodeSignUp(),
  ),
  //onbording
  GetPage(
    name: AppRoute.OnBording,
    page: () => const onBording(),
  ),
];

// Map<String, Widget Function(BuildContext)> routes = {
//   //Auth
//   AppRoute.login: (context) => const Login(),
//   AppRoute.signup: (context) => const SignUp(),
//   AppRoute.forgetPassowrd: (context) => const ForgetPassowrd(),
//   AppRoute.verfiyCode: (context) => VerfiyCode(),
//   AppRoute.resetPassowrd: (context) => ressetPassowrd(),
//   AppRoute.successRessetPasssowrd: (context) => const SuccessResetPassowrd(),
//   AppRoute.successSignUp: (context) => const SuccessSignUp(),
//   AppRoute.verfiyCodeSignUp: (context) => VerfiyCodeSignUp(),

//   //onbording
//   AppRoute.OnBording: (context) => const onBording(),
// };
