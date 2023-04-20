import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/passwordReset/passwordResetController.dart';

import '../../common/widget/text_field.dart';
import '../../utils/StringRes.dart';
import '../../utils/colorRes.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PasswordResetController controller = Get.put(PasswordResetController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            right: Get.width * 0.04,
            left: Get.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height*0.07,),
              Text(
                StringRes.passwordReset,
                style: bold(color: ColorRes.black, fontSize: 30),
              ),
              SizedBox(height: Get.height*0.02,),

              Text(
                StringRes.reset,
                style: bold(color: ColorRes.color767676, fontSize: 16),
              ),
              SizedBox(height: Get.height*0.05,),

              Text(
                StringRes.email,
                style: bold(color: ColorRes.black, fontSize: 16),
              ),
              SizedBox(height: Get.height*0.01,),

              textFild(controller.emailController, StringRes.enterEmail,
                  controller.boxColor,controller.emailController.text),

              SizedBox(height: Get.height*0.05,),

              Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringRes.submit,
                    style: regular(
                        fontSize: 20,
                        color: ColorRes.black,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: Get.height*0.05,),

              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringRes.cancel,
                    style: regular(
                        fontSize: 20,
                        color: ColorRes.color767676,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
