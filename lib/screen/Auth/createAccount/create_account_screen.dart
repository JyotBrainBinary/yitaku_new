import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/createAccount/create_account_controller.dart';

import 'package:yitaku/utils/asset_res.dart';

import '../../../common/widget/text_style.dart';
import '../../../utils/StringRes.dart';
import '../../../utils/colorRes.dart';

class CreateaccountScreen extends StatelessWidget {
  const CreateaccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreateAccountController createAccountController =
        Get.put(CreateAccountController());

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: createAccountController.formKey,
            child: GetBuilder<CreateAccountController>(
                id: "createaccount",
                builder: (controller) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height * 0.1),
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
                            "Create account",
                            style: overpassRegular(
                              color: ColorRes.black,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.03,
                        ),
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
                                color:
                                    createAccountController.emailTextActive == true
                                        ? ColorRes.stroke
                                        : controller.emailError == ''
                                            ? ColorRes.textfieldBorder
                                            : ColorRes.errorIcon),
                          ),
                          child: TextFormField(
                            onTap: () {
                              createAccountController.emailTextActive = true;
                              controller.update(["createaccount"]);
                            },
                            controller: createAccountController.emailController,
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
                              suffixIcon: controller.emailError == ''
                                  ? const SizedBox()
                                  : const Icon(
                                      Icons.error_outline,
                                      color: ColorRes.errorIcon,
                                    ),
                            ),
                            onChanged: (value) {
                              controller.update(["createaccount"]);
                            },
                          ),
                        ),

                        (controller.emailError == '')
                            ? const SizedBox()
                            : Text(
                                createAccountController.emailError,
                                style: regular(
                                    fontSize: 13, color: ColorRes.error),
                              ),
                        SizedBox(
                          height: Get.height * 0.025,
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
                              controller.update(["createaccount"]);
                            },
                            obscuringCharacter: "*",
                            obscureText: true,
                            controller:
                                createAccountController.passwordController,
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
                              suffixIcon: controller.passwordError == ''
                                  ? const SizedBox()
                                  : const Icon(
                                      Icons.error_outline,
                                      color: ColorRes.errorIcon,
                                    ),
                            ),
                            onChanged: (value) {
                              controller.update(["createaccount"]);
                            },
                          ),
                        ),
                        (controller.passwordError == '')
                            ? const SizedBox()
                            : Text(
                                createAccountController.passwordError,
                                style: regular(
                                    fontSize: 13, color: ColorRes.error),
                              ),
                        SizedBox(
                          height: Get.height * 0.040,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: Get.width * 0.035,
                            ),
                            (controller.isChecked == true)
                                ? InkWell(
                                    onTap: () {
                                      if (controller.isChecked == false) {
                                        controller.isChecked = true;
                                        controller.update(["createaccount"]);
                                      } else {
                                        controller.isChecked = false;
                                        controller.update(["createaccount"]);
                                      }
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                              color: ColorRes.color365CC0),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                AssetRes.check,
                                              ),
                                              scale: 2.5)),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      if (controller.isChecked == false) {
                                        controller.isChecked = true;
                                        controller.update(["createaccount"]);
                                      } else {
                                        controller.isChecked = false;
                                        controller.update(["createaccount"]);
                                      }
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            color: ColorRes.color365CC0),
                                      ),
                                    ),
                                  ),
                            SizedBox(
                              width: Get.width * 0.03,
                            ),
                            Flexible(
                              child: Text(
                                StringRes.iHave,
                                textAlign: TextAlign.start,
                                // overflow: TextOverflow.visible,
                                style: semiBold(
                                  color: ColorRes.color344056,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.046,
                        ),
                        createAccountController
                                    .emailController.text.isNotEmpty &&
                                createAccountController
                                    .passwordController.text.isNotEmpty &&
                                createAccountController.isChecked == true
                            ? GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  controller.onTapSignUp();
                                  controller.update(["createaccount"]);
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
                                    child: Text(StringRes.signUp,
                                        style: overpassRegular(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16)),
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
                                  child: Text(StringRes.signUp,
                                      style: overpassRegular(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                ),
                              ),
                        SizedBox(
                          height: Get.height * 0.028,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: ColorRes.color2F3941))),
                            child: Text(
                              StringRes.read,
                              style: overpassRegular(
                                color: ColorRes.fontGrey,
                                fontSize: 17,
                                //textdeco: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.1),
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
