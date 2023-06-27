import 'package:ecommers_php_app/controller/auth/resstpasssord_controller.dart';
import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/view/screen/OnBording.dart';
import 'package:ecommers_php_app/view/screen/auth/SignUp.dart';

import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/checkemail.dart';
import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/forgetpassowrd.dart';
import 'package:ecommers_php_app/view/screen/auth/login.dart';
import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/resetPassowrd.dart';
import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/SuccessResetPassowrd.dart';
import 'package:ecommers_php_app/view/screen/auth/scuccess%20SignUp.dart';
import 'package:ecommers_php_app/view/screen/auth/forgetpasswordAuth/verfiyCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signup: (context) => SignUp(),
  AppRoute.forgetPassowrd: (context) => ForgetPassowrd(),
  AppRoute.verfiyCode: (context) => VerfiyCode(),
  AppRoute.resetPassowrd: (context) => RessetPassowrd(),
  AppRoute.successRessetPasssowrd: (context) => const SuccessResetPassowrd(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.checkemail: (context) => CheckEmail(),

  //onbording
  AppRoute.OnBording: (context) => const onBording(),
};
