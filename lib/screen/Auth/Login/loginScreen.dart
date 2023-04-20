import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/Login/loginController.dart';
import 'package:yitaku/screen/Auth/Sign%20Up/signUpScreen.dart';
import 'package:yitaku/screen/passwordReset/passwordResetPage.dart';
import 'package:yitaku/utils/colorRes.dart';

import '../../../common/widget/text_style.dart';
import '../../../utils/StringRes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: loginController.formKey,
        child: SafeArea(
            child: GetBuilder<LoginController>(
                id: "logintextfield",
                builder: (controller) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: Get.width * 0.056, right: Get.width * 0.056),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.04,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: semiBold(
                                color: ColorRes.color767676, fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.03,
                        ),
                        Text(
                          StringRes.email,
                          style: regular(
                              fontSize: 14, color: ColorRes.color767676),
                        ),
                        SizedBox(
                          height: Get.height * 0.015,
                        ),
                        TextFormField(

                          validator: (value) {
                            if (value.toString().isEmail == false) {
                              return "Please enter valid email";
                            }
                            return null;

                          },
                          controller: loginController.emailController,
                          decoration: InputDecoration(
                            hintText: StringRes.enterEmail,

                            enabled: true,
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.6,
                              ),

                            ),
                            border:  OutlineInputBorder(
                              borderSide: BorderSide(color: ColorRes.color767676, width: 0.6),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorRes.color767676, width: 0.6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorRes.color767676, width: 0.6),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorRes.appColor,
                                width: 0.6,
                              ),
                            ),

                            contentPadding:
                            EdgeInsets.only(left: 10, bottom: 9),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.015,
                        ),
                        Text(
                          StringRes.password,
                          style: regular(
                              fontSize: 14, color: ColorRes.color767676),
                        ),
                        SizedBox(
                          height: Get.height * 0.015,
                        ),

                        TextFormField(
                          validator: (value) {
                            if (loginController.passwordController.text
                                    .trim() ==
                                "") {
                              return "Please enter some text";

                            }
                          },
                          controller: loginController.passwordController,
                          decoration: InputDecoration(
                            hintText: StringRes.enterPassword,
                            border:  OutlineInputBorder(
                              borderSide: BorderSide(color: ColorRes.color767676, width: 0.6),
                            ),
                            enabled: true,
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.6,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorRes.color767676, width: 0.6),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorRes.color767676, width: 0.6),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorRes.appColor,
                                width: 0.6,
                              ),
                            ),

                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 9),
                          ),
                        ),

                        controller.isPassError == true
                            ? Text("Please enter some text")
                            : SizedBox(),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),

                        GestureDetector(
                          onTap: () {
                            if (loginController.formKey.currentState!
                                .validate()) {
                              Get.to(PasswordResetPage());
                              controller.update(["logintextfield"]);
                            }
                          },
                          child: Container(
                            height: Get.height * 0.047,
                            width: Get.width,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: ColorRes.appColor,
                            ),
                            child: Text(StringRes.login, style: regular()),
                          ),
                        ),

                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(PasswordResetPage());
                          },
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                StringRes.forgot,
                                style: regular(
                                    color: ColorRes.color767676, fontSize: 17),
                              )),
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(SignUpScreen());
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              StringRes.doNot,
                              style: regular(
                                color: ColorRes.color767676,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })),
      ),
    );
  }
}

// InkWell(
//   onTap: () {
//      if (controller.passwordController.text
//             .trim() ==
//         "") {
//
//       controller.isPassError = true;
//       controller.update(["logintextfield"]);
//     } else if (controller.emailController.text.trim() ==
//         "" ) {
//
//       controller.isEmailError = true;
//       controller.update(["logintextfield"]);
//     }  else if (controller
//         .passwordController.text.isNotEmpty) {
//
//       controller.isPassError = false;
//
//
//       controller.update(["logintextfield"]);
//     }else if (controller
//          .emailController.text.isNotEmpty) {
//
//        controller.isEmailError = false;
//
//
//        controller.update(["logintextfield"]);
//      }
//
//   },
//   child: Container(
//     height: Get.height * 0.047,
//     width: Get.width,
//     alignment: Alignment.center,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(60),
//       color: ColorRes.appColor,
//     ),
//     child: Text(StringRes.login, style: regular()),
//   ),
// ),
