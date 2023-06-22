import 'package:ecommers_php_app/core/constant/routes.dart';
import 'package:ecommers_php_app/data/datasource/static/static.dart';
import 'package:ecommers_php_app/routes.dart';
import 'package:ecommers_php_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBordingController extends GetxController {
// abstract to show message in all page
  next();
  onPageChanged(int index); //index means number of page
}

class OnBordingControllerImp extends OnBordingController {
  late PageController pageController;
  int currentPage = 0; //page of my location
  @override
  next() {
    currentPage++; //to increse number of page
    if (currentPage > onBordingList.length - 1) {
      // # of data from list
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
