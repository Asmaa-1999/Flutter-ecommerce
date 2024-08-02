import 'package:ecomerce/screens/onboarding3.dart';
import 'package:ecomerce/shared/app_images.dart';
import 'package:ecomerce/widget/onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: OnBoardingScreen(
        name: const OnBoarding3(),
        image: AppImages.onBoarding2,
        title: 'Take advantage',
        bottom:
            'Publish up your selfies to make yourself more beautiful with this app.',
        subTitle: 'Of The Offer Shopping',
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
}
