import 'dart:async';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/core/constants/app_routes.dart';

abstract class SplashControllerInit extends GetxController {
  goToNext();
}

class SplashController extends SplashControllerInit {
  late Timer timer;

  @override
  void onInit() {
    timer = Timer(const Duration(seconds: 3), () => goToNext());
    super.onInit();
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }

  @override
  goToNext() {
    Get.offNamed(AppRoutes.next);
  }
}
