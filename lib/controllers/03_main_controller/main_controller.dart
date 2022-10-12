import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/views/screens/04_home_screen/home_screen.dart';
import 'package:grocery_food_delivery/views/screens/05_favourites_screen/favourites_screen.dart';
import 'package:grocery_food_delivery/views/screens/07_orders_screen/orders_screen.dart';
import 'package:grocery_food_delivery/views/screens/08_profile_screen/profile_screen.dart';

abstract class MainControllerInit extends GetxController {
  changePage(int toPage);
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

  @override
  changePage(int toPage) {
    currentPage = toPage;
    update();
  }
}
