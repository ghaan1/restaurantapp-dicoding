import 'package:flutter/material.dart';
import 'package:restaurantapp/pages/home/home_main.dart';
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
    return SizedBox(
      width: 200,
      child: AspectRatio(
        aspectRatio: 208 / 71,
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                spreadRadius: 1.5,
                blurRadius: 10,
                offset: Offset(0.5, 6),
                color: kDarkColor),
          ]),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeMain();
                  },
                ),
              );
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
            padding: const EdgeInsets.all(0.0),
            child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [kSecondaryColor, kSecondaryColor]),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Container(
                    alignment: Alignment.center,
                    child: const Text('Mulai',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold)))),
          ),
        ),
      ),
    );
  }
}
