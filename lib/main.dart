import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/home_screen_two/home_screen_two.dart';
import 'package:yitaku/screen/property_detail/property_details_screen.dart';


import 'package:yitaku/screen/splash_screen/splash_screen.dart';
import 'package:yitaku/services/pref_service.dart';
import 'package:yitaku/utils/colorRes.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefService.init();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: ColorRes.color3879E8,
        statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
