import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:food_app/Home.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              "assets/images/back.png",
              fit: BoxFit.cover,
            ),
          ),
          // Splash screen animation
          AnimatedSplashScreen(
            animationDuration: Duration(seconds: 3),
            splash: SizedBox.shrink(),
            splashTransition: SplashTransition.sizeTransition,
            nextScreen: Home(),
            backgroundColor: Colors.transparent, // Ensure transparent background
          ),
        ],
      ),
    );
  }
}
