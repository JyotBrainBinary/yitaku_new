import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/Auth/Login/loginScreen.dart';
import 'package:yitaku/screen/Auth/Sign%20Up/signUpScreen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class OnBordScreen extends StatelessWidget {
  const OnBordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Logo",
                style: bold(fontSize: 33, color: ColorRes.color767676)),
            SizedBox(height: Get.height * 0.15),
            Padding(
              padding: EdgeInsets.only(
                  left: Get.width * 0.056, right: Get.width * 0.056),
              child: InkWell(
                onTap: () {
                  Get.to(() => SignUpScreen());
                },
                child: Container(
                  height: Get.height * 0.053,
                  width: Get.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorRes.appColor,
                    boxShadow: [
                      BoxShadow(
                        color: ColorRes.color767676.withOpacity(0.4),
                        offset: const Offset(
                          0,
                          5.0,
                        ),
                        blurRadius: 2,
                        spreadRadius: 0.05,
                      )
                    ],
                  ),
                  child: Text(StringRes.signUp, style: medium()),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            InkWell(
              onTap: () {
                Get.to(LoginScreen());
              },
                child: Text(StringRes.login,
                    style: medium(color: ColorRes.color858585))),
            SizedBox(height: Get.height * 0.06),
            Text(StringRes.exploreWithoutSignUp,
                style: medium(
                    color: ColorRes.color858585, fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
