// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/loginpage_new/login_new.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
          () {
        return Get.offAll(() => LoginPageNew());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3879E8),
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
