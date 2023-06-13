import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yitaku/screen/Auth/loginpage_new/login_new.dart';
import 'package:yitaku/screen/dashbord/dashboard_screen.dart';
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/screen/home_screen_two/home_screen_two.dart';
import 'package:yitaku/services/pref_service.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';
import 'package:yitaku/utils/pref_keys.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

SharedPreferences? pref;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(
        seconds: 2,
      ),
          () {
        // return Get.offAll(() => LoginPageNew());
        return Get.offAll(() => PrefService.getBool(PrefKeys.isLogin) == true? DashboardScreen():LoginPageNew());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3879E8),
      body: Center(
        child: Image.asset(
          AssetRes.whiteLogo,
          color: ColorRes.white,
          height: Get.height * 0.7,
          width: Get.width * 0.69,
        ),
      ),
    );
  }
}
