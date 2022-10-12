import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/core/constants/app_routes.dart';
import 'package:grocery_food_delivery/core/constants/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food E-Commerce',
      theme: AppThemes.theme,
      darkTheme: AppThemes.darkTheme,
      getPages: AppRoutes.routes,
    );
  }
}
