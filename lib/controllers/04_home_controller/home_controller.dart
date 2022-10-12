import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeControllerInit extends GetxController {
  changeAdBannerPage();
}

class HomeController extends HomeControllerInit {
  // ========= Ad Banner Var ========= //
  int adBannerPage = 0;
  int adBannerIndecator = 0;
  late Timer timer;
  late PageController pageController;
  List ads = ['Ad 1', 'Ad 2', 'Ad 3', 'Ad 4', 'Ad 5'];
  bool reverse = false;

  // ========= Categories Var ========= //
  List categories = ['Cat 22 34 1dfgssd', 'Cat 2', 'Cat 3', 'Cat 4', 'Cat 5'];

  // =========  Var ========= //
  late TextEditingController searchController;

// ===================== Ad Banner ===================== //
  @override
  changeAdBannerPage() {
    reverse ? --adBannerPage : adBannerPage++;
    adBannerIndecator++;
    if (adBannerIndecator >= ads.length) {
      adBannerIndecator = 0;
    }
    if (adBannerPage >= ads.length) {
      reverse = true;
      adBannerPage = ads.length - 2;
      ads.replaceRange(
          0, ads.length - 1, ads.sublist(0, ads.length - 1).reversed);
    } else if (adBannerPage < 0) {
      reverse = false;
      adBannerPage = 1;
      ads.replaceRange(1, ads.length, ads.sublist(1, ads.length).reversed);
    }
    update();
    pageController.animateToPage(
      adBannerPage,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  @override
  void onInit() {
    pageController = PageController();
    searchController = TextEditingController();
    timer = Timer.periodic(const Duration(seconds: 6), (timer) {
      changeAdBannerPage();
    });
    super.onInit();
  }

  // @override
  // void onClose() {
  //   timer.cancel();
  //   pageController.dispose();
  //   super.onClose();
  // }
}
