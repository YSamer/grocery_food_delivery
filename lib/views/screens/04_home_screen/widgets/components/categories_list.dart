import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/controllers/03_main_controller/main_controller.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/views/widgets/texts/light_primary_text.dart';
import 'package:grocery_food_delivery/views/widgets/texts/primary_text.dart';

class CategoriesList extends GetView<MainController> {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PrimaryText(text: 'Categories'),
                  IconButton(
                    onPressed: () {},
                    splashRadius: 25,
                    splashColor: AppColors.lightPrimaryColor,
                    highlightColor: AppColors.whitePrimaryColor,
                    icon: const Icon(
                      Icons.arrow_forward_rounded,
                      color: AppColors.seconderyColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 85,
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            color: AppColors.seconderyColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        const SizedBox(height: 10),
                        LightPrimaryText(
                          text: controller.categories[index],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
                itemCount: controller.categories.length,
              ),
            ),
          ],
        );
      },
    );
  }
}
