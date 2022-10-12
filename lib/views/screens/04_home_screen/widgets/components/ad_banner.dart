import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/controllers/04_home_controller/home_controller.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';

class AdBanner extends GetView<HomeController> {
  const AdBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Container(
          height: 175,
          width: size.width - 40,
          decoration: const BoxDecoration(
            color: AppColors.grey3Color,
          ),
          child: Stack(
            children: [
              PageView.builder(
                controller: controller.pageController,
                reverse: controller.reverse,
                itemCount: controller.ads.length,
                itemBuilder: (context, index) {
                  return Center(child: Text('${controller.ads[index]}'));
                },
              ),
              Positioned(
                bottom: 5,
                left: 10,
                child: Row(
                  children: [
                    ...List.generate(controller.ads.length, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 6,
                        width: controller.adBannerIndecator == index ? 20 : 6,
                        margin: const EdgeInsets.all(2.5),
                        decoration: BoxDecoration(
                          color: AppColors.seconderyColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
