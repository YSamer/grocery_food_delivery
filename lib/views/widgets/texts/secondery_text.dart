import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/core/constants/app_themes.dart';

class SeconderyText extends StatelessWidget {
  const SeconderyText({
    super.key,
    required this.text,
    this.size = 15,
    this.color = AppColors.text4Color,
  });

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: AppTexts.bodyText1.copyWith(color: color, fontSize: size),
    );
  }
}
