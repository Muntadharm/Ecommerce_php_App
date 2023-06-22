import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/view/screen/OnBording.dart';
import 'package:ecommers_php_app/view/screen/auth/SignUp.dart';
import 'package:ecommers_php_app/view/screen/auth/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signup: (context) => const SignUp(),
  AppRoute.OnBording: (context) => const onBording(),
};
