import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_food_delivery/controllers/03_main_controller/main_controller.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/views/screens/03_main_screen/widgets/custom_bottom_tab.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.grey4Color,
          body: controller.pagesList[controller.currentPage],
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 5,
            child: Row(
              children: [
                ...List.generate(
                  controller.pagesList.length + 1,
                  (index) {
                    int i = index > 2 ? index - 1 : index;
                    return index == 2
                        ? const Spacer()
                        : CustomBottomTab(
                            icon: controller.tabsIcons[i],
                            selectedIcon: controller.selectedIcons[i],
                            active: controller.currentPage == i ? true : false,
                            onPressed: () {
                              controller.changePage(i);
                            },
                          );
                  },
                )
              ],
            ),
          ),
          floatingActionButton: MediaQuery.of(context).viewInsets.bottom != 0
              ? const SizedBox()
              : FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: AppColors.primaryColor,
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: AppColors.whitePrimaryColor,
                  ),
                ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
