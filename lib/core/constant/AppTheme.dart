import 'package:ecommers_php_app/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData EnglishTheme = ThemeData(
    fontFamily: "PlayfairDisplay",
    textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
        displayMedium: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: AppColor.black),
        displaySmall: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.white),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            height: 2,
            fontSize: 20,
            color: AppColor.Grey),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.bold,
            height: 2,
            fontSize: 16,
            color: AppColor.Grey)));

ThemeData ArabicTheme = ThemeData(
    fontFamily: "Cairo",
    textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
        displayMedium: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: AppColor.black),
        displaySmall: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.white),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            height: 2,
            fontSize: 20,
            color: AppColor.Grey),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.bold,
            height: 2,
            fontSize: 16,
            color: AppColor.Grey)));
