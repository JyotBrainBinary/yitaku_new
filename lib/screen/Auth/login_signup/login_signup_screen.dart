import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/blue_botton.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/Auth/complete_signup/complete_signin_screen.dart';
import 'package:yitaku/screen/Auth/login_signup/login_signup_controller.dart';
import 'package:yitaku/utils/asset_res.dart';

class LoginSignupScreen extends StatelessWidget {
  LoginSignupScreen({super.key});

  LoginSignupController loginSignupController =
      Get.put(LoginSignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.15),
              Center(
                child: Image.asset(
                  AssetRes.yikatuLogo,
                  width: Get.width * 0.75,
                ),
              ),
              SizedBox(height: Get.height * 0.2),
              BlueBotton(height: Get.height * 0.060, buttonText: "SIGN UP",onPressed: () {
                Get.to(const CompleteSignupScreen());
              }),
              SizedBox(height: Get.height * 0.03),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "LOG IN",
                    style: overpassSemiBold(color: const Color(0xFF757575),fontSize: 16)),
                  ),
              SizedBox(height: Get.height * 0.03),

              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Explore without signup",
                    style: medium(color: const Color(0xFF757575),fontSize: 16 ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
