import 'package:ecomerce/shared/app_images.dart';
import 'package:ecomerce/widget/custom_button.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.landing),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              textColor: Colors.black,
              buttonText: "Login",
              color: Colors.white,
            ),
            CustomButton(
              textColor: Colors.white,
              buttonText: "Sign up",
              color: Color.fromRGBO(0, 0, 0, .3),
            ),
          ],
        ),
      ),
    );
  }
}
