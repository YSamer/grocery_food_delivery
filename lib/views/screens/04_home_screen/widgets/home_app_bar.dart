import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/controllers/04_home_controller/home_controller.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/views/widgets/text_fields/search.dart';
import 'package:grocery_food_delivery/views/widgets/texts/primary_text.dart';
import 'package:grocery_food_delivery/views/widgets/texts/secondery_text.dart';

class HomeAppBar extends GetView<HomeController> {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      right: 0,
      child: SizedBox(
        height: 135,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 10),
                        SeconderyText(text: 'welcome'),
                        SizedBox(height: 5),
                        PrimaryText(text: 'Yahya Samer'),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      size: 28,
                      color: AppColors.primaryColor,
                    ),
                    splashRadius: 25,
                    splashColor: AppColors.lightPrimaryColor,
                    highlightColor: AppColors.whitePrimaryColor,
                  ),
                ],
              ),
              Expanded(
                child: Search(controller: controller.searchController),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
