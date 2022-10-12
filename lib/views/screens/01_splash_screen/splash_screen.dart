import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/controllers/01_splash_controller/splash_controller.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/views/widgets/logo/logo_icon_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: LogoIconText(),
      ),
    );
  }
}
