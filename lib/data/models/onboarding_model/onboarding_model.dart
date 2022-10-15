
class OnboardingModel {
  final String image, title, description;

  OnboardingModel(
      {required this.image, required this.title, required this.description});
}

final List<OnboardingModel> onboardings = [
  OnboardingModel(
    image: 'assets/images/onboarding_1.png',
    title: 'Find the item you\'ve \nbeen looking for',
    description:
        'Here you\'ll see rich varieties of goods, carefully classified for seamless browsing experience.',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding_2.png',
    title: 'Find the item you\'ve \nbeen looking for',
    description:
        'Here you\'ll see rich varieties of goods, carefully classified for seamless browsing experience.',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding_3.png',
    title: 'Find the item you\'ve \nbeen looking for',
    description:
        'Here you\'ll see rich varieties of goods, carefully classified for seamless browsing experience.',
  ),
];
