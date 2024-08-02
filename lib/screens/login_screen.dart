import 'package:ecomerce/shared/app_images.dart';
import 'package:ecomerce/widget/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double screenHeight = constraints.maxHeight;
              double screenWidth = constraints.maxWidth;

              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.05),
                    Image.asset(
                      AppImages.logo,
                      width: screenWidth * 0.6,
                      height: screenHeight * 0.3,
                    ),
                    const ListTile(
                      title: Text(
                        "Welcome!",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Please login or sign up to continue",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                          suffixIcon: Icon(Icons.check),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const CustomButton(
                      color: Colors.black,
                      buttonText: "Login",
                      textColor: Colors.white,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: [
                          Expanded(child: Divider(thickness: 2)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("OR"),
                          ),
                          Expanded(child: Divider(thickness: 2)),
                        ],
                      ),
                    ),
                    const CustomButton(
                      color: Colors.blue,
                      buttonText: "Continue via Facebook",
                      textColor: Colors.white,
                    ),
                    const CustomButton(
                      color: Colors.grey,
                      buttonText: "Continue via Google",
                      textColor: Colors.black,
                    ),
                    const CustomButton(
                      color: Colors.grey,
                      buttonText: "Continue via Apple",
                      textColor: Colors.black,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
