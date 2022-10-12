import 'package:get/get.dart';
import 'package:grocery_food_delivery/views/screens/01_splash_screen/splash_screen.dart';
import 'package:grocery_food_delivery/views/screens/02_onboarding_screen/onboarding_screen.dart';
import 'package:grocery_food_delivery/views/screens/03_main_screen/main_screen.dart';
import 'package:grocery_food_delivery/views/screens/04_home_screen/home_screen.dart';

class AppRoutes {
  static const String initial = '/';
  static const String next = '/next';
  static const String home = '/home';

  static List<GetPage<dynamic>> routes = [
    GetPage(name: initial, page: () => const SplashScreen()),
    GetPage(name: next, page: () => const MainScreen()),
    GetPage(name: home, page: () => const HomeScreen()),
  ];
}
