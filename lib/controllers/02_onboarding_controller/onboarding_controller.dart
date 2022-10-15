import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/core/constants/app_routes.dart';

abstract class OnboardingControllerInit extends GetxController {
  nextPage();
  changePage(int value);
}

class OnboardingController extends OnboardingControllerInit {
  late PageController pageController;
  int currentPage = 0;

  @override
  void onInit() {
    pageController = PageController(initialPage: currentPage);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  @override
  nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    update();
  }

  @override
  changePage(int value) {
    currentPage = value;
    update();
  }
}
