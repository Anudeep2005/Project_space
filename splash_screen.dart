import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        color: const Color.fromRGBO(2, 14, 27, 1),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/flutterstorm1.gif',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
      backgroundColor: Colors.transparent,
      splashIconSize: double.infinity, 
      duration: 3000,                
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: const Duration(milliseconds: 1000),
    );
  }
}
