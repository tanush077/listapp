import 'dart:async';
import 'package:flutter/material.dart';
import 'package:listapp/home.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 8),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Homepage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.black, Colors.black]),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset('assets/images/coder.png'),
            const SizedBox(
              height: 70,
            ),
            LoadingAnimationWidget.inkDrop(color: Colors.white, size: 50),
            const SizedBox(height: 50),
            DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              child: AnimatedTextKit(
                animatedTexts: [WavyAnimatedText('Loading....')],
                isRepeatingAnimation: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
