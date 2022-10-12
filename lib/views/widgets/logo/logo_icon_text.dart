import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_themes.dart';
import 'package:grocery_food_delivery/views/widgets/logo/logo_icon.dart';

class LogoIconText extends StatelessWidget {
  const LogoIconText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const LogoIcon(),
        Text(
          'YS FOOD',
          style: AppTexts.headline1.copyWith(letterSpacing: 2),
        ),
      ],
    );
  }
}
