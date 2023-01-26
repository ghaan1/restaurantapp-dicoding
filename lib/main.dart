import 'package:flutter/material.dart';
import 'package:restaurantapp/pages/splash/splash_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => const SplashScreen()},
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}
