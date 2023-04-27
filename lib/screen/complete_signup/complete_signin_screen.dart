import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/complete_signup/complete_signup_controller.dart';
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/screen/passwordReset/passwordResetPage.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class CompleteSignupScreen extends StatelessWidget {
  const CompleteSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CompleteSignupController completeSignupController = Get.put(
      CompleteSignupController(),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: Form(
            key: completeSignupController.formKey,
            child: SafeArea(
                child: GetBuilder<CompleteSignupController>(
                    id: "complete",
                    builder: (controller) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.10,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                AssetRes.yikatuLogo,
                                height: Get.height * 0.05,
                                width: Get.width * 0.9,
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.028,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                StringRes.oneLast,
                                style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Text(
                              StringRes.name,
                              style: regular(
                                  fontSize: 14, color: ColorRes.color344056),
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
                                    color: controller.nameTextActive == true
                                        ? Colors.blue
                                        : controller.nameError == ''
                                            ? ColorRes.textfieldBorder
                                            : ColorRes.errorIcon),
                              ),
                              child: TextFormField(
                                onTap: () {
                                  controller.nameTextActive = true;
                                  controller.update(["complete"]);
                                },
                                controller:
                                    completeSignupController.nameController,
                                style: overpassRegular(
                                    fontSize: 16, color: ColorRes.fontGrey),
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  hintText: StringRes.yourNme,
                                  hintStyle: overpassRegular(
                                      fontSize: 16, color: ColorRes.hinttext),
                                  suffixIcon: controller.nameError == ''
                                      ? SizedBox()
                                      : Icon(
                                          Icons.error_outline,
                                          color: ColorRes.errorIcon,
                                        ),
                                ),
                                onChanged: (value) {
                                  controller.update(["complete"]);
                                },
                              ),
                            ),

                            (controller.nameError == '')
                                ? const SizedBox()
                                : Text(
                                    controller.nameError,
                                    style: regular(
                                        fontSize: 13, color: ColorRes.error),
                                  ),

                            SizedBox(
                              height: Get.height * 0.027,
                            ),
                            Text(
                              StringRes.surname,
                              style: regular(
                                  fontSize: 14, color: ColorRes.color344056),
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
                                    color: controller.surnameTextActive == true
                                        ? Colors.blue
                                        : controller.surnameError == ''
                                            ? ColorRes.textfieldBorder
                                            : ColorRes.errorIcon),
                              ),
                              child: TextFormField(
                                onTap: () {
                                  controller.surnameTextActive = true;

                                  controller.nameValidation();
                                  controller.update(["complete"]);
                                },
                                controller:
                                    completeSignupController.surnameController,
                                style: overpassRegular(
                                    fontSize: 16, color: ColorRes.fontGrey),
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  hintText: StringRes.yourLast,
                                  hintStyle: overpassRegular(
                                      fontSize: 16, color: ColorRes.hinttext),
                                  suffixIcon: controller.surnameError == ''
                                      ? SizedBox()
                                      : Icon(
                                          Icons.error_outline,
                                          color: ColorRes.errorIcon,
                                        ),
                                ),
                                onChanged: (value) {
                                  controller.update(["complete"]);
                                },
                              ),
                            ),

                            (controller.surnameError == '')
                                ? const SizedBox()
                                : Text(
                                    controller.surnameError,
                                    style: regular(
                                        fontSize: 13, color: ColorRes.error),
                                  ),
                            SizedBox(
                              height: Get.height * 0.027,
                            ),
                            Text(
                              StringRes.where,
                              style: regular(
                                  fontSize: 14, color: ColorRes.color344056),
                            ),
                            SizedBox(
                              height: Get.height * 0.012,
                            ),
                            // SizedBox(
                            //   height: Get.height * 0.117,
                            //   child: DropdownButtonFormField(
                            //     icon: Padding(
                            //       padding: const EdgeInsets.only(right: 19.5),
                            //       child: Icon(Icons.keyboard_arrow_down_rounded, color: ColorRes.fontGrey,),
                            //     ),
                            //     onChanged: (String? value) {
                            //       completeSignupController.dropdownValue =
                            //           value!;
                            //       controller.update(["complete"]);
                            //     },
                            //     style: overpassRegular(
                            //         color: ColorRes.fontGrey, fontSize: 16),
                            //     decoration:  InputDecoration(
                            //       hintText: "Select team member",
                            //       hintStyle: overpassRegular(
                            //           fontSize: 16, color: ColorRes.hinttext),
                            //       border: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //             color: ColorRes.sky),
                            //         borderRadius: BorderRadius.all(
                            //             Radius.elliptical(10, 10)),
                            //       ),
                            //       enabled: true,
                            //       disabledBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //           color: ColorRes.textfieldBorder,
                            //         ),
                            //         borderRadius: BorderRadius.all(
                            //             Radius.elliptical(10, 10)),
                            //       ),
                            //       focusedBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //             color: ColorRes.sky),
                            //         borderRadius: BorderRadius.all(
                            //             Radius.elliptical(10, 10)),
                            //       ),
                            //       enabledBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //             color: ColorRes.textfieldBorder,
                            //             ),
                            //         borderRadius: BorderRadius.all(
                            //             Radius.elliptical(10, 10)),
                            //       ),
                            //       errorBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //           color: Colors.redAccent,
                            //           width: 0.6,
                            //         ),
                            //         borderRadius: BorderRadius.all(
                            //             Radius.elliptical(10, 10)),
                            //       ),
                            //       contentPadding:
                            //           EdgeInsets.only(left: 10, bottom: 9),
                            //     ),
                            //     items: completeSignupController.list
                            //         .map((cityTitle) => DropdownMenuItem(
                            //             value: cityTitle,
                            //             child: Wrap(
                            //                 children: [Text("$cityTitle")])))
                            //         .toList(),
                            //   ),
                            // ),

                            //// drop down final
                            GestureDetector(
                              onTap: () {
                                if (completeSignupController.isDrop == false) {
                                  completeSignupController.isDrop = true;
                                } else {
                                  completeSignupController.isDrop = false;
                                }
                                completeSignupController.update(["complete"]);
                              },
                              child: Container(
                                height: 44,
                                width: Get.width,
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1.3,
                                      color: completeSignupController
                                          .sellerTypeString !=
                                          StringRes.selectTeamMember
                                          ? ColorRes.stroke
                                          : ColorRes.textfieldBorder),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      completeSignupController.sellerTypeString,
                                      style: (completeSignupController
                                                  .sellerTypeString ==
                                              StringRes.selectTeamMember)
                                          ? overpassRegular(
                                              color: ColorRes.hinttext,
                                              fontSize: 16)
                                          : regular(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: ColorRes.fontGrey),
                                    ),
                                    const Spacer(),
                                    (completeSignupController.isDrop)
                                        ? const Icon(
                                            Icons.keyboard_arrow_up_rounded,
                                            color: ColorRes.fontGrey,
                                          )
                                        : const Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: ColorRes.fontGrey,
                                          )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            (completeSignupController.isDrop)
                                ? Container(
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: ColorRes.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorRes.textfieldBorder
                                              .withOpacity(0.5),
                                          blurRadius: 10,
                                          spreadRadius: 0.5,
                                          offset: const Offset(0, 6),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: List.generate(
                                        completeSignupController.list.length,
                                        (index) => Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                completeSignupController
                                                        .sellerTypeString =
                                                    completeSignupController
                                                        .list[index];
                                                completeSignupController
                                                    .isDrop = false;
                                                completeSignupController
                                                    .update(["complete"]);
                                              },
                                              child: Container(
                                                height: 44,
                                                decoration: BoxDecoration(
                                                  color: (completeSignupController
                                                              .sellerTypeString ==
                                                          completeSignupController
                                                              .list[index])
                                                      ? ColorRes.colorF2F4F7
                                                      : Colors.transparent,
                                                  borderRadius: (index == 0)
                                                      ? const BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(10),
                                                          topLeft: Radius
                                                              .circular(10))
                                                      : (index == 3)
                                                          ? const BorderRadius
                                                                  .only(
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10),
                                                              bottomLeft: Radius
                                                                  .circular(10))
                                                          : BorderRadius
                                                              .circular(0),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 15, right: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      completeSignupController
                                                          .list[index],
                                                      style: regular(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: ColorRes
                                                              .fontGrey),
                                                    ),
                                                    Spacer(),
                                                    (completeSignupController
                                                                .sellerTypeString ==
                                                            completeSignupController
                                                                .list[index])
                                                        ? Image.asset(
                                                            AssetRes.check,
                                                            height: 10)
                                                        : const SizedBox(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            completeSignupController
                                        .nameController.text.isNotEmpty &&
                                    completeSignupController
                                        .surnameController.text.isNotEmpty &&
                                    completeSignupController.sellerTypeString !=
                                        StringRes.selectTeamMember
                                ? GestureDetector(
                                    onTap: () {
                                      controller.onTapCompleteSignUp();
                                      controller.update(["complete"]);
                                    },
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 44,
                                        //height: Get.height * 0.063,
                                        width: Get.width * 0.4,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: ColorRes.appColor,
                                        ),
                                        child: Text("Complete sign up",
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
                                      width: Get.width * 0.4,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: ColorRes.disableColor,
                                      ),
                                      child: Text("Complete sign up",
                                          style: overpassRegular(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                    ),
                                  ),
                          ],
                        ),
                      );
                    })),
          ),
        ),
      ),
    );
  }
}
