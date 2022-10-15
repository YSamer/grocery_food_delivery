import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.5,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          SizedBox(height: height * 0.025),
          Image.asset(
            image,
            // height: 250,
          ),
          SizedBox(height: height * 0.05),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: height * 0.025),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          // const Spacer(flex: 8),
        ],
      ),
    );
  }
}
