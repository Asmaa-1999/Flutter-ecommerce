import 'package:ecomerce/screens/onboarding2.dart';
import 'package:ecomerce/shared/app_images.dart';
import 'package:ecomerce/widget/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingScreen(
        name: const OnBoarding2(),
        image: AppImages.onBoarding2,
        title: '20% Discount',
        bottom:
            'Publish up your selfies to make yourself more beautiful with this app.',
        subTitle: 'New Arrival Product',
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
}
