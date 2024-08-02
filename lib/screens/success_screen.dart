import 'package:ecomerce/widget/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset(
                width: 200,
                "assets/1930264_check_complete_done_green_success_icon.png"),
            const Text(
              "successful!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              textAlign: TextAlign.center,
              "you have successful logged in welcome to our application",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const CustomButton(
                color: Colors.black,
                buttonText: "start shopping",
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
