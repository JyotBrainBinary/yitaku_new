import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/Auth/BlueLogin/blueLoginController.dart';
import 'package:yitaku/screen/Auth/Sign%20Up/signUpScreen.dart';
import 'package:yitaku/screen/Auth/createAccount/create_account_screen.dart';
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/screen/passwordReset/passwordResetPage.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

import '../../../utils/asset_res.dart';

class BlueLoginScreen extends StatelessWidget {
  const BlueLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlueLoginController blueLoginController = Get.put(BlueLoginController());

    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: blueLoginController.formKey,
            child: GetBuilder<BlueLoginController>(
                id: "bluelogintextfield",
                builder: (controller) {
                  return Padding(
                    padding: EdgeInsets.only(
                      // left: Get.width * 0.056, right: Get.width * 0.056
                      left: 16, right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.062,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            AssetRes.yikatuLogo,
                            height: Get.height * 0.06,
                            width: Get.width * 0.9,
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.086,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: regular(
                              color: ColorRes.black,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.023,
                        ),
                        Text(
                          StringRes.email,
                          style: regular(fontSize: 14, color: ColorRes.black),
                        ),
                        SizedBox(
                          height: Get.height * 0.008,
                        ),
                        GetBuilder<BlueLoginController>(
                          id: "email",
                          builder: (controller) => TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value.toString().isEmail == false) {
                                // controller.activeField = true;

                                return "Please enter valid email";
                              }
                              // controller.activeField = false;
                              // controller.update(["email"]);

                              return null;
                            },
                            // onFieldSubmitted: (value) {
                            //   debugPrint("submitted");
                            //   if (controller.formKey.currentState!
                            //       .validate()) {
                            //
                            //     controller.activeField=true;
                            //     controller.update(["email"]);
                            //   }
                            //   else{
                            //     controller.activeField=false;
                            //     controller.update(["email"]);
                            //   }
                            //
                            //
                            // },
                            onChanged: (value) {
                              if (value.toString().isEmail == false) {
                                // controller.activeField = true;
                                controller.activeField = false;
                              } else {
                                controller.activeField = true;
                              }
                              // blueLoginController.isActive= true;
                              /*   if (controller.formKey.currentState!.validate()) {
                              controller.activeField=false;
                            }
                            else{
                              controller.activeField=true;
                            }*/
                              controller.update(["email"]);
                              controller.update(["bluelogintextfield"]);
                            },
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              hintText: StringRes.mailHInt,

                              // suffixIcon: Image.asset(AssetRes.iconError,height: 13,width: 13,fit: BoxFit.fill),
                              hintStyle: regular(
                                  fontSize: 16, color: ColorRes.hinttext),
                              suffixIcon: controller.activeField == false
                                  ? Icon(
                                      Icons.error_outline_outlined,
                                      color: Colors.red,
                                    )
                                  : SizedBox(),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 0.6,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(10, 10)),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorRes.appColor, width: 0.6),
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(10, 10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorRes.appColor, width: 0.6),
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(10, 10)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorRes.textfieldBorder,
                                    width: 0.6),
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(10, 10)),
                              ),
                              errorBorder:
                                  controller.emailController.text.isEmail ==
                                          false
                                      ? OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: ColorRes.error,
                                            width: 0.6,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(10, 10)),
                                        )
                                      : OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorRes.appColor,
                                              width: 0.6),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(10, 10)),
                                        ),
                              contentPadding:
                                  EdgeInsets.only(left: 10, bottom: 9),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.023,
                        ),
                        Text(
                          StringRes.password,
                          style: regular(fontSize: 14, color: ColorRes.black),
                        ),
                        SizedBox(
                          height: Get.height * 0.008,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.length < 8) {
                              return "Minimum 8 character required";
                            }
                          },
                          // onChanged: (value) {
                          //   // blueLoginController.isActive= true;
                          //
                          //   controller.update(["bluelogintextfield"]);
                          //   if (value.toString().isEmail == true) {
                          //     controller.update(["bluelogintextfield"]);
                          //   }
                          // },

                          onChanged: (value) {
                            if (value.length < 8) {
                              blueLoginController.activePassField = false;
                            } else {
                              blueLoginController.activePassField = true;
                            }

                            controller.update(["bluelogintextfield"]);
                          },
                          onFieldSubmitted: (value) {
                            debugPrint("submitted");
                            if (blueLoginController.formKey.currentState!
                                .validate()) {
                              controller.update(["bluelogintextfield"]);
                            }
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          controller: blueLoginController.passwordController,
                          decoration: InputDecoration(
                            hintText: StringRes.enterPassword,
                            hintStyle: TextStyle(
                                fontSize: 16, color: ColorRes.hinttext),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            enabled: true,
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.6,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.appColor, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorRes.textfieldBorder, width: 0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorRes.error,
                                width: 0.6,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                            ),
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 9),
                            suffixIcon:
                                blueLoginController.activePassField == false
                                    ? Icon(
                                        Icons.error_outline_outlined,
                                        color: Colors.red,
                                      )
                                    : SizedBox(),
                          ),
                        ),
                        //               controller.isPassError == true
                        //                   ? Text("Please enter some text")
                        //                   : SizedBox(),
                        SizedBox(
                          height: Get.height * 0.046,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (blueLoginController
                                    .emailController.text.isNotEmpty &&
                                blueLoginController
                                    .passwordController.text.isNotEmpty) {
                              if (blueLoginController.formKey.currentState!
                                  .validate()) {
                                Get.to(GoalScreen());
                                controller.update(["bluelogintextfield"]);
                              }
                            } else
                              return null;

                            controller.update(["bluelogintextfield"]);
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: Get.height * 0.063,
                              width: Get.width * 0.32,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: blueLoginController
                                            .emailController.text.isNotEmpty &&
                                        blueLoginController
                                            .passwordController.text.isNotEmpty
                                    ? ColorRes.appColor
                                    : ColorRes.disableColor,
                              ),
                              child: Text("Login",
                                  style: regular(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.046,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(PasswordResetPage());
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              StringRes.forgot,
                              style: regular(
                                color: ColorRes.black,
                                fontSize: 17,
                                textdeco: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.04,
                        ),

                        GestureDetector(
                          onTap: () {
                            Get.to(CreateaccountScreen());
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              StringRes.doNot,
                              // style: TextStyle(decoration: TextDecoration.underline),
                              style: regular(
                                color: ColorRes.black,
                                fontSize: 17,
                                textdeco: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
