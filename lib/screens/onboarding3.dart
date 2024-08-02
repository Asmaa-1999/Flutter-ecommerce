import 'package:ecomerce/screens/login_screen.dart';
import 'package:ecomerce/shared/app_images.dart';
import 'package:ecomerce/widget/onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: OnBoardingScreen(
        name: const LoginScreen(),
        image: AppImages.onBoarding2,
        title: 'All Types Offers',
        bottom:
            'Publish up your selfies to make yourself more beautiful with this app.',
        subTitle: 'Within Your Reach ',
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
}
