import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/views/home_view.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splashIconSize: 300,
          splash: const CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage("assets/images/newssplash.png"),
          ),
          nextScreen: const Homeview()),
    );
  }
}
