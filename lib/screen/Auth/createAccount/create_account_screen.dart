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
                                color: createAccountController.emailTextActive == true
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
                                  ? SizedBox()
                                  : Icon(
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
                          style:
                          regular(fontSize: 13, color: ColorRes.error),
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
                            controller: createAccountController.passwordController,
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
                                  ? SizedBox()
                                  : Icon(
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
                          style:
                          regular(fontSize: 13, color: ColorRes.error),
                        ),
                        SizedBox(
                          height: Get.height * 0.040,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Transform.scale(
                              scale: 1.1,
                              child: Checkbox(
                                value: createAccountController.isChecked,
                                onChanged: (value) {
                                  createAccountController.isChecked = value!;
                                  controller.update(['createaccount']);
                                },

                                checkColor: ColorRes.appColor,
                                activeColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                side: MaterialStateBorderSide.resolveWith(
                                    (states) => BorderSide(
                                        width: 1, color: ColorRes.appColor)),
                              ),
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
                        createAccountController.emailController.text.isNotEmpty &&
                            createAccountController
                                .passwordController.text.isNotEmpty && createAccountController.isChecked == true
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
                          child: Text(
                            StringRes.read,
                            style: semiBold(
                              color: ColorRes.color344056,
                              fontSize: 16,
                              textdeco: TextDecoration.underline,
                              fontWeight: FontWeight.w400,
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
