import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/Auth/createAccount/create_account_screen.dart';
import 'package:yitaku/screen/Auth/loginpage_new/login_new_controller.dart';
import 'package:yitaku/screen/passwordReset/passwordResetPage.dart';

import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';
import '../../../utils/asset_res.dart';

class LoginPageNew extends StatelessWidget {
  LoginPageNew({Key? key}) : super(key: key);

  final LoginNewController loginNewController = Get.put(LoginNewController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<LoginNewController>(
            id: "newlogin",
            builder: (controller) {
              return Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// ----- top --------
                      SizedBox(height: Get.height * 0.09),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          AssetRes.yikatuLogo,
                          height: Get.height * 0.08,
                          width: Get.width * 0.9,
                        ),
                      ),

                      SizedBox(height: Get.height * 0.086),
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
                      SizedBox(height: Get.height * 0.023),

                      /// ----- text field --------

                      emailTextField(controller),

                      SizedBox(height: Get.height * 0.023),

                      passWordTextField(controller),

                      SizedBox(height: Get.height * 0.046),

                      /// ---- login button ----

                      loginButton(controller, context),

                      SizedBox(height: Get.height * 0.046),

                      /// ------- don't have account----------
                      GestureDetector(
                        onTap: () {
                          Get.to(const CreateaccountScreen());
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: ColorRes.color2F3941))),
                                child: Text(
                                  StringRes.doNot,
                                  //style: TextStyle(decoration: TextDecoration.underline),
                                  style: overpassRegular(
                                    color: ColorRes.black,
                                    fontSize: 17,
                                    //textdeco: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              /*Container(
                              height: 1.5,
                              width: 260,
                              color: ColorRes.fontGrey,
                            ),*/
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.04),

                      /// --- forgot pass ---------
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            Get.to(PasswordResetPage());
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: ColorRes.color2F3941))),
                            child: Text(
                              StringRes.forgot,
                              style: overpassRegular(
                                color: ColorRes.fontGrey,
                                fontSize: 17,
                                //textdeco: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.09),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget emailTextField(controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        Container(
          height: 44,
          width: Get.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: loginNewController.emailTextActive == true
                    ? ColorRes.stroke
                    : controller.emailError == ''
                        ? ColorRes.textfieldBorder
                        : ColorRes.errorIcon),
          ),
          child: TextFormField(
            onTap: () {
              loginNewController.emailTextActive = true;
              controller.update(["newlogin"]);
            },
            controller: loginNewController.emailController,
            style: overpassRegular(fontSize: 16, color: ColorRes.fontGrey),
            decoration: InputDecoration(
              // contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 10, top: 10),

              hintText: StringRes.mailHInt,
              hintStyle:
                  overpassRegular(fontSize: 16, color: ColorRes.hinttext),
              suffixIcon: controller.emailError == ''
                  ? const SizedBox()
                  : const Icon(
                      Icons.error_outline,
                      color: ColorRes.errorIcon,
                    ),
            ),
            onChanged: (value) {
              controller.update(["newlogin"]);
            },
          ),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        (controller.emailError == '')
            ? const SizedBox()
            : Text(
                loginNewController.emailError,
                style: regular(fontSize: 13, color: ColorRes.error),
              ),
      ],
    );
  }

  Widget passWordTextField(controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                color: controller.passTextActive == true
                    ? ColorRes.stroke
                    : controller.passwordError == ''
                        ? ColorRes.textfieldBorder
                        : ColorRes.errorIcon),
          ),
          child: TextFormField(
            onTap: () {
              controller.passTextActive = true;

              controller.emailValidation();
              controller.update(["newlogin"]);
            },
            obscureText: true,
            obscuringCharacter: "*",
            controller: loginNewController.passwordController,
            style: overpassRegular(fontSize: 16, color: ColorRes.fontGrey),
            decoration: InputDecoration(
              // contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 10, top: 10),
              hintText: "*****",

              hintStyle:
                  overpassRegular(fontSize: 16, color: ColorRes.hinttext),
              suffixIcon: controller.passwordError == ''
                  ? const SizedBox()
                  : const Icon(
                      Icons.error_outline,
                      color: ColorRes.errorIcon,
                    ),
            ),
            onChanged: (value) {
              controller.update(["newlogin"]);
            },
          ),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        (controller.passwordError == '')
            ? const SizedBox()
            : Text(
                controller.passwordError,
                style: regular(fontSize: 13, color: ColorRes.error),
              ),
      ],
    );
  }

  Widget loginButton(controller, context) {
    return loginNewController.emailController.text.isNotEmpty &&
            loginNewController.passwordController.text.isNotEmpty
        ? GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              controller.onTapLogin();
              controller.update(["newlogin"]);
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 44,
                //height: Get.height * 0.063,
                width: Get.width * 0.32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorRes.appColor,
                ),
                child: Text(StringRes.login,
                    style: overpassRegular(
                        fontWeight: FontWeight.w600, fontSize: 16)),
              ),
            ),
          )
        : Align(
            alignment: Alignment.center,
            child: Container(
              height: 44,
              //height: Get.height * 0.063,
              width: Get.width * 0.32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorRes.disableColor,
              ),
              child: Text(StringRes.login,
                  style: overpassRegular(
                      fontWeight: FontWeight.w600, fontSize: 16)),
            ),
          );
  }
}
