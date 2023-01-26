import 'package:flutter/material.dart';
import 'package:restaurantapp/pages/splash/components/component_splash.dart';
import 'package:restaurantapp/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: kSmoothColor,
        ),
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 40,
            ),
            HeaderSplash(text: 'RESTORANKU'),
            MiddleSplash(text: 'Menyediakan Segala Kebutuhanmu'),
            const ButtonSplash(),
          ],
        ),
      ),
    );
  }
}
