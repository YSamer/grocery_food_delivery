import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/views/screens/04_home_screen/home_screen.dart';
import 'package:grocery_food_delivery/views/screens/05_favourites_screen/favourites_screen.dart';
import 'package:grocery_food_delivery/views/screens/07_orders_screen/orders_screen.dart';
import 'package:grocery_food_delivery/views/screens/08_profile_screen/profile_screen.dart';

abstract class MainControllerInit extends GetxController {
  changePage(int toPage);
  changeAdBannerPage(bool right);
  initHome();
}

class MainController extends MainControllerInit {
  int currentPage = 0;
  List<Widget> pagesList = const [
    HomeScreen(),
    FavouritesScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  List<IconData> tabsIcons = [
    Icons.home_outlined,
    Icons.favorite_outline_rounded,
    Icons.airport_shuttle_outlined,
    Icons.person_outline_rounded,
  ];

  List<IconData> selectedIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.airport_shuttle,
    Icons.person_rounded,
  ];

  // ========= Ad Banner Var ========= //
  int adBannerPage = 0;
  int adBannerIndecator = 0;
  Timer? timer;
  late PageController pageController;
  List ads = ['Ad 1', 'Ad 2', 'Ad 3', 'Ad 4', 'Ad 5'];
  bool reverse = false;

  // ========= Categories Var ========= //
  List categories = ['Cat 22 34 1dfgssd', 'Cat 2', 'Cat 3', 'Cat 4', 'Cat 5'];

  // =========  Var ========= //
  late TextEditingController searchController;

  @override
  changePage(int toPage) {
    currentPage = toPage;
    currentPage == 0 ? initHome() : null;
    update();
  }

  // ===================== Ad Banner ===================== //
  @override
  changeAdBannerPage(bool right) {
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
  initHome() {
    pageController = PageController(initialPage: adBannerIndecator);
    searchController = TextEditingController();
    timer == null
        ? timer = Timer.periodic(const Duration(seconds: 6), (timer) {
            currentPage == 0 ? changeAdBannerPage(true) : null;
            
          })
        : null;
  }

  @override
  void onInit() {
    initHome();
    super.onInit();
  }

  @override
  void onClose() {
    timer?.cancel();
    pageController.dispose();
    super.onClose();
  }
}
