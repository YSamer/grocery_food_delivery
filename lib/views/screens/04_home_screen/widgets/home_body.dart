import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/views/screens/04_home_screen/widgets/components/ad_banner.dart';
import 'package:grocery_food_delivery/views/screens/04_home_screen/widgets/components/categories_list.dart';
import 'package:grocery_food_delivery/views/widgets/texts/primary_text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 145,
      child: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            // =========  Ads Banner ========= //
            AdBanner(),
            // =========  Categories List ========= //
            CategoriesList(),
          ],
        ),
      ),
    );
  }
}
