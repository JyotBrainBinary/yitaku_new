import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';

import 'package:yitaku/screen/Auth/createAccount/create_account_screen.dart';
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/screen/passwordReset/passwordResetPage.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

import '../../../utils/asset_res.dart';
import 'blueLoginController.dart';

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
                    padding: const EdgeInsets.only(
                      // left: Get.width * 0.056, right: Get.width * 0.056
                      left: 16, right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// ----- top --------

                        SizedBox(
                          height: Get.height * 0.062,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            AssetRes.yikatuLogo,
                            height: Get.height * 0.08,
                            width: Get.width * 0.9,
                          ),
                        ),

                        SizedBox(
                          height: Get.height * 0.086,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            StringRes.login,
                            style: overpassRegular(
                              color: ColorRes.black,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.023,
                        ),

                        /// ----- text field --------

                        Text(
                          StringRes.email,
                          style: regular(
                              fontSize: 14,
                              color: ColorRes.color344056,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: Get.height * 0.008,
                        ),
                       /* GetBuilder<BlueLoginController>(
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
                              *//*   if (controller.formKey.currentState!.validate()) {
                              controller.activeField=false;
                            }
                            else{
                              controller.activeField=true;
                            }*//*
                              controller.update(["email"]);
                              controller.update(["bluelogintextfield"]);
                            },
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              hintText: StringRes.mailHInt,

                              // suffixIcon: Image.asset(AssetRes.iconError,height: 13,width: 13,fit: BoxFit.fill),
                              hintStyle: overpassRegular(
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
                        ),*/



                        Container(
                          height: 44,
                          width: Get.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: blueLoginController.blueBorder ==
                                    true
                                    ? ColorRes.sky
                                    : blueLoginController.redBorder == true
                                    ? ColorRes.error
                                    : ColorRes.textfieldBorder),
                          ),
                          child: TextFormField(
                            onTap: () {

                            },
                            controller: blueLoginController.emailController,
                            style: overpassRegular(
                                fontSize: 16, color: ColorRes.fontGrey),
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                              contentPadding:
                              const EdgeInsets.only(left: 10, top: 10),
                              hintText: StringRes.mailHInt,
                              hintStyle: overpassRegular(
                                  fontSize: 16, color: ColorRes.hinttext),
                              suffixIcon:
                              blueLoginController.redBorder == true
                                  ? const Icon(
                                Icons.error_outline,
                                color: ColorRes.errorIcon,
                              )
                                  : const SizedBox(),
                            ),
                            onChanged: (value) {
                              controller.update(["bluelogintextfield"]);
                            },
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.023,
                        ),
                        Text(
                          StringRes.password,
                          style: regular(
                              fontSize: 14,
                              color: ColorRes.color344056,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: Get.height * 0.008,
                        ),


                    Container(
                      height: 44,
                      width: Get.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: blueLoginController.blueBorderPass ==
                                true
                                ? ColorRes.sky
                                : blueLoginController.redBorderPass == true
                                ? ColorRes.error
                                : ColorRes.textfieldBorder),
                      ),
                      child: TextFormField(
                        onTap: () {
                          if (blueLoginController.redBorderPass == false) {
                            blueLoginController.blueBorderPass = true;
                            if (blueLoginController.emailController.text
                                .trim() ==
                                "") {
                              blueLoginController.emailError =
                                  StringRes.emailError1;

                              blueLoginController.blueBorder = false;
                              blueLoginController.redBorder = true;
                              controller.update(['bluelogintextfield']);
                            } else if (RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(blueLoginController
                                .emailController.text)) {
                              blueLoginController.blueBorder = true;
                              blueLoginController.redBorder = false;
                              controller.update(['bluelogintextfield']);
                            } else {
                              blueLoginController.emailError =
                                  StringRes.emailError2;

                              blueLoginController.blueBorder = false;
                              blueLoginController.redBorder = true;
                              controller.update(['bluelogintextfield']);
                            }

                            controller.update(["bluelogintextfield"]);
                          } else if (blueLoginController.redBorderPass ==
                              true) {
                            blueLoginController.blueBorderPass = false;
                            if (blueLoginController.emailController.text
                                .trim() ==
                                "") {
                              blueLoginController.emailError =
                                  StringRes.emailError1;

                              blueLoginController.blueBorder = false;
                              blueLoginController.redBorder = true;
                              controller.update(['bluelogintextfield']);
                            } else if (RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(blueLoginController
                                .emailController.text)) {
                              blueLoginController.blueBorder = true;
                              blueLoginController.redBorder = false;
                              controller.update(['bluelogintextfield']);
                            } else {
                              blueLoginController.emailError =
                                  StringRes.emailError2;

                              blueLoginController.blueBorder = false;
                              blueLoginController.redBorder = true;
                              controller.update(['bluelogintextfield']);
                            }

                            controller.update(["bluelogintextfield"]);
                          }
                        },
                        controller: blueLoginController.passwordController,
                        style: overpassRegular(
                            fontSize: 16, color: ColorRes.fontGrey),
                        decoration: InputDecoration(
                          // contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          contentPadding:
                          const EdgeInsets.only(left: 10, top: 10),
                          hintText: "*****",
                          hintStyle: overpassRegular(
                              fontSize: 16, color: ColorRes.hinttext),
                          suffixIcon:
                          blueLoginController.redBorderPass == true
                              ? const Icon(
                            Icons.error_outline,
                            color: ColorRes.errorIcon,
                          )
                              : const SizedBox(),
                        ),
                        onChanged: (value) {
                          controller.update(["bluelogintextfield"]);
                        },
                      ),
                    ),


                    blueLoginController.redBorderPass == true
                        ? Text(
                      blueLoginController.passError,
                      style: regular(color: Colors.red),
                    )
                        : const SizedBox(),



                        SizedBox(
                          height: Get.height * 0.046,
                        ),
                      blueLoginController.emailController.text.isNotEmpty && blueLoginController.passwordController.text.isNotEmpty?  GestureDetector(
                          onTap: () {
                             if(blueLoginController.redBorder ==false && blueLoginController.redBorderPass ==false){


                               Get.to(const GoalScreen());
                             }
                             else{



                             }
                            if (blueLoginController.navigateEmail == false &&
                                blueLoginController.navigatePass == false) {
                              if (blueLoginController.emailController.text
                                      .trim() ==
                                  "") {
                                blueLoginController.emailError =
                                    StringRes.emailError1;

                                blueLoginController.blueBorder = false;
                                blueLoginController.redBorder = true;
                                controller.update(['bluelogintextfield']);
                              } else if (RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(blueLoginController
                                      .emailController.text)) {
                                blueLoginController.blueBorder = true;
                                blueLoginController.redBorder = false;
                                blueLoginController.navigateEmail = true;

                                controller.update(['bluelogintextfield']);
                              } else {
                                blueLoginController.emailError =
                                    StringRes.emailError2;

                                blueLoginController.blueBorder = false;
                                blueLoginController.redBorder = true;
                                controller.update(['bluelogintextfield']);
                              }

                              controller.update(["bluelogintextfield"]);

                              if (blueLoginController.passwordController.text
                                      .trim() ==
                                  "") {
                                blueLoginController.passError =
                                    StringRes.passError;

                                blueLoginController.blueBorderPass = false;
                                blueLoginController.redBorderPass = true;
                                controller.update(['bluelogintextfield']);
                              } else if (blueLoginController
                                      .passwordController.text.length <
                                  4  ) {
                                blueLoginController.passError =
                                    StringRes.passError2;

                                blueLoginController.blueBorderPass = false;
                                blueLoginController.redBorderPass = true;
                                controller.update(['bluelogintextfield']);
                              }
                              else {
                                blueLoginController.blueBorderPass = true;
                                blueLoginController.redBorderPass = false;
                                blueLoginController.navigatePass = true;
                                controller.update(['bluelogintextfield']);
                              }

                              controller.update(["bluelogintextfield"]);
                            }
                            else if (blueLoginController.navigatePass ==true && blueLoginController.navigateEmail==true) {
                              Get.to(const GoalScreen());
                              controller.update(["bluelogintextfield"]);
                            }
                            else
                              return null;

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
                                  style: overpassRegular(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                          ),
                        ):Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: Get.height * 0.063,
                          width: Get.width * 0.32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorRes.disableColor,
                          ),
                          child: Text("Login",
                              style: overpassRegular(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16)),
                        ),
                      ),

                        SizedBox(
                          height: Get.height * 0.046,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to( PasswordResetPage());
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Text(
                                  StringRes.forgot,
                                  style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontSize: 17,
                                    //textdeco: TextDecoration.underline,
                                  ),
                                ),
                                Container(
                                  height: 1.5,
                                  width: 130,
                                  color: ColorRes.fontGrey,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.04,
                        ),

                        GestureDetector(
                          onTap: () {
                            Get.to(const CreateaccountScreen());
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Text(
                                  StringRes.doNot,
                                  // style: TextStyle(decoration: TextDecoration.underline),
                                  style: overpassRegular(
                                    color: ColorRes.black,
                                    fontSize: 17,
                                    //textdeco: TextDecoration.underline,
                                  ),
                                ),
                                Container(
                                  height: 1.5,
                                  width: 260,
                                  color: ColorRes.fontGrey,
                                ),
                              ],
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
