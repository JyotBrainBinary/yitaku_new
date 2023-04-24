import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/BlueLogin/blueLoginScreen.dart';
import 'package:yitaku/screen/Auth/createAccount/create_account_screen.dart';
import 'package:yitaku/screen/complete_signup/complete_signin_screen.dart';
import 'package:yitaku/screen/dashbord/dashboard_screen.dart';
import 'package:yitaku/screen/homeScreen/home_screen.dart';
import 'package:yitaku/screen/home_screen_two/home_screen_two.dart';
import 'package:yitaku/screen/intro_screen/intro_screen.dart';
import 'package:yitaku/screen/loginpage_new/login_new.dart';
import 'package:yitaku/screen/splash_screen/splash_screen.dart';
import 'package:yitaku/screen/typeSeller_screen/type_seller_screen.dart';

import 'screen/goal_screen/goal_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context)
  {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yitaku',
      home: SplashScreen(),
    );
  }


}
