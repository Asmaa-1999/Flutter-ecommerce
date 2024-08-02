import 'package:ecomerce/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // Set the system UI to immersive mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    // Navigate to LandingScreen after a delay
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return const LandingScreen();
        }),
      );
    });
  }

  @override
  void dispose() {
    // Reset the system UI mode
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
                "assets/09c6bb8fcd18ab4ca9bedce02ce569ac.jpeg"),
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.white.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
