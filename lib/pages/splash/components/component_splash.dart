import 'package:flutter/material.dart';
import 'package:flutter_button/social/github_auth_button.dart';
import 'package:restaurantapp/utils/utils.dart';

class HeaderSplash extends StatelessWidget {
  String text = '';
  HeaderSplash({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 40,
          color: kDarkColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MiddleSplash extends StatelessWidget {
  String text = '';
  MiddleSplash({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Container(
            height: 213,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_splash.png'),
              ),
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: kDarkColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSplash extends StatelessWidget {
  const ButtonSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return GithubAuthButton(
      onTap: () {},
      title: 'Mulai',
      fontWeight: FontWeight.bold,
      wGradientColors: true,
      wOpacity: true,
      iconSize: 0,
      titleColor: Colors.white,
      borderRadius: BorderRadius.circular(30),
      opacityValue: .4,
      gradientColors: const [kSecondaryColor, kSecondaryColor],
      shadows: const [
        BoxShadow(
            spreadRadius: 1.5,
            blurRadius: 10,
            offset: Offset(0.5, 6),
            color: kDarkColor),
      ],
    );
  }
}
