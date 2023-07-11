import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/core/services/services.dart';
import 'package:ecommers_php_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class OnBordingController extends GetxController {
// abstract to show message in all page
  next();
  onPageChanged(int index); //index means number of page
}

class OnBordingControllerImp extends OnBordingController {
  late PageController pageController;
  int currentPage = 0; //page of my location
  MyServises myServises = Get.find();
  @override
  next() {
    currentPage++; //to increse number of page
    if (currentPage > onBordingList.length - 1) {
      // # of data from list
      myServises.sharedPreferences.setString('onbording', '1');
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController(); // first page shown
    super.onInit();
  }
}
