import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';
import 'package:grocery_food_delivery/core/constants/app_themes.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: AppColors.seconderyColor,
      cursorHeight: 20,
      cursorRadius: const Radius.circular(22),
      textAlign: TextAlign.start,
      style: controller.text.isEmpty ? null : AppTexts.headline3,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: AppColors.text4Color,
        ),
        hintText: 'Search Product...',
        hintStyle: AppTexts.bodyText1,
        suffixIcon: IconButton(
          onPressed: () {},
          splashRadius: 25,
          icon: const Icon(
            Icons.filter_alt_outlined,
            color: AppColors.primaryColor,
          ),
          splashColor: AppColors.lightPrimaryColor,
          highlightColor: AppColors.whitePrimaryColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 15,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: AppColors.whiteColor.withOpacity(0.5),
      ),
    );
  }
}
