import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/views/screens/04_home_screen/widgets/home_body.dart';
import 'package:grocery_food_delivery/views/screens/04_home_screen/widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.grey4Color,
        body: SafeArea(
          child: SizedBox(
            height: size.height - 90,
            width: size.width,
            child: Stack(
              fit: StackFit.expand,
              alignment: AlignmentDirectional.topStart,
              children: [
                const HomeAppBar(),
                HomeBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
