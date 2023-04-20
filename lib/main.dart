import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/intro_screen/intro_screen.dart';
import 'package:yitaku/screen/splash_screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yitaku',
      home: IntroScreen()//SplashScreen(),
    );
  }
}
