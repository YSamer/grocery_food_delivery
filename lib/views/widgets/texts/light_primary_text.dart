import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/core/constants/app_themes.dart';

class LightPrimaryText extends StatelessWidget {
  const LightPrimaryText({
    super.key,
    required this.text,
    this.size = 15,
    this.color = AppColors.text3Color,
  });

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: AppTexts.headline3.copyWith(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
