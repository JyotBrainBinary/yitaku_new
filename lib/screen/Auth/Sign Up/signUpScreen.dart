import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_field.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/Auth/Login/loginScreen.dart';
import 'package:yitaku/screen/Auth/Sign%20Up/signUpController.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);

   SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<SignUpController>(
          id: "textFieldBorderColor",
            builder: (controller){
          return Padding(
            padding: EdgeInsets.only(
                left: Get.width * 0.056, right: Get.width * 0.056),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.06,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringRes.signUpAndCreateAccount,
                    style: medium(fontSize: 24, color: ColorRes.color767676),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringRes.letsGetYouStarted,
                    style: regular(fontSize: 12, color: ColorRes.appColor),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.08,
                ),
                Text(StringRes.email, style: regular(fontSize: 14, color: ColorRes.color767676),),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                textFild(controller.emailController, StringRes.enterEmail, controller.boxColor,controller.emailController.text),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                Text(StringRes.password, style: regular(fontSize: 14, color: ColorRes.color767676),),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                textFild(controller.passwordController, StringRes.enterPassword, controller.boxColor,controller.passwordController.text),
                SizedBox(
                  height: Get.height * 0.06,
                ),
                InkWell(
                  onTap: (){

                    if(controller.emailController.text.trim() == "" || controller.passwordController.text.trim() == ""){
                      controller.boxColor = true;
                      controller.update(["textFieldBorderColor"]);
                    } else if (controller.emailController.text.isNotEmpty || controller.passwordController.text.isNotEmpty){
                      controller.boxColor = false;
                      controller.update(["textFieldBorderColor"]);
                    }

                  },
                  child: Container(
                    height: Get.height * 0.053,
                    width: Get.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorRes.appColor,
                    ),
                    child: Text(StringRes.signUp, style: regular()),
                  ),
                ),
                Spacer(),

                InkWell(onTap: () {
                  Get.to(LoginScreen());
                },child: Align(alignment :Alignment.center,child: Text(StringRes.already,style: regular(fontSize: 20,color: ColorRes.color767676),)))
              ],
            ),
          );
        })
      ),
    );
  }
}
