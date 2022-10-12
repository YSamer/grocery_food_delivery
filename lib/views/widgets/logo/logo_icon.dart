import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';

class LogoIcon extends StatelessWidget {
  const LogoIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.food_bank_rounded,
      color: AppColors.whitePrimaryColor,
      size: 150,
    );
  }
}
