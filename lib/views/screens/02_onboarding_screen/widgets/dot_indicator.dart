import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 5,
      width: isActive ? 20 : 10,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.primaryColor
            : AppColors.primaryColor.withOpacity(0.4),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
