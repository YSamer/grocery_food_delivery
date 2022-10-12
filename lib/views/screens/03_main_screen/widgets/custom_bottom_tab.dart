import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';

class CustomBottomTab extends StatelessWidget {
  const CustomBottomTab({
    Key? key,
    required this.icon,
    required this.selectedIcon,
    this.selectedItemColor = AppColors.primaryColor,
    this.unSelectedItemColor = AppColors.grey3Color,
    this.active = false,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon, selectedIcon;
  final Color selectedItemColor, unSelectedItemColor;
  final bool active;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 5.3;
    return SizedBox(
      width: width,
      child: IconButton(
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        splashRadius: 25,
        splashColor: AppColors.lightPrimaryColor,
        highlightColor: AppColors.whitePrimaryColor,
        icon: Icon(
          active ? selectedIcon : icon,
          color: active ? selectedItemColor : unSelectedItemColor,
          size: 25,
        ),
      ),
    );
  }
}
