import 'package:flutter/material.dart';
import 'package:flutter_scaffolders/home_screen.dart';
import 'package:flutter_scaffolders/splash_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : SplashScreen()
    );
  }
}