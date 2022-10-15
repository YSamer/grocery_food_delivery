import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/controllers/02_onboarding_controller/onboarding_controller.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/data/models/onboarding_model/onboarding_model.dart';
import 'package:grocery_food_delivery/views/screens/02_onboarding_screen/widgets/dot_indicator.dart';
import 'package:grocery_food_delivery/views/screens/02_onboarding_screen/widgets/onboarding_content.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: controller.pageController,
                    onPageChanged: (value) {
                      controller.changePage(value);
                    },
                    itemCount: onboardings.length,
                    itemBuilder: (context, index) => OnboardingContent(
                      image: onboardings[index].image,
                      title: onboardings[index].title,
                      description: onboardings[index].description,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onboardings.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: DotIndicator(
                          isActive: index == controller.currentPage,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Row(
                    children: [
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            controller.nextPage();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: AppColors.primaryColor,
                          ),
                          child: const Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
