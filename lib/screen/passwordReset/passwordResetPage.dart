// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/passwordReset/passwordResetController.dart';
import 'package:yitaku/utils/asset_res.dart';
import '../../utils/StringRes.dart';
import '../../utils/colorRes.dart';

class PasswordResetPage extends StatelessWidget {
  PasswordResetPage({Key? key}) : super(key: key);

  PasswordResetController controller = Get.put(PasswordResetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GetBuilder<PasswordResetController>(
              id: "reset",
              builder: (controller) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: Get.width * 0.04,
                    left: Get.width * 0.04,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// ----- top --------
                        SizedBox(height: Get.height * 0.16),

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
                            StringRes.passwordReset,
                            style: overpassRegular(
                              color: ColorRes.black,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.023),

                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            textAlign: TextAlign.center,
                            StringRes.reset,
                            style: overpassRegular(
                                color: ColorRes.hinttext, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.05,
                        ),

                        /// ----- text field --------

                        emailTextField(controller),

                        SizedBox(height: Get.height * 0.05),

                        /// ---- submit button ----

                        submitButton(controller, context),

                        SizedBox(height: Get.height * 0.03),

                        InkWell(
                          onTap: () {
                            Get.back();
                            controller.emailController.clear();
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              StringRes.cancel,
                              style: overpassRegular(
                                  fontSize: 20,
                                  color: ColorRes.fontGrey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),

                        SizedBox(height: Get.height * 0.16),
                      ],
                    ),
                  ),
                );
              })),
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
                color: controller.emailTextActive == true
                    ? ColorRes.stroke
                    : controller.emailError == ''
                        ? ColorRes.textfieldBorder
                        : ColorRes.errorIcon),
          ),
          child: TextFormField(
            onTap: () {
              controller.emailTextActive = true;
              controller.update(["reset"]);
            },
            controller: controller.emailController,
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
              controller.update(["reset"]);
            },
          ),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        (controller.emailError == '')
            ? const SizedBox()
            : Text(
                controller.emailError,
                style: regular(fontSize: 13, color: ColorRes.error),
              ),
      ],
    );
  }

  Widget submitButton(controller, context) {
    return Column(
      children: [
        controller.emailController.text.isNotEmpty
            ? GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  controller.onTapSubmit();
                  controller.update(["reset"]);
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
                    child: Text(StringRes.submit,
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
                  child: Text(StringRes.submit,
                      style: overpassRegular(
                          fontWeight: FontWeight.w600, fontSize: 16)),
                ),
              ),
      ],
    );
  }
}
