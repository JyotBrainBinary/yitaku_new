import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/complete_signup/complete_signup_controller.dart';
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
                          // left: Get.width * 0.056, right: Get.width * 0.056
                          left: 16, right: 16,
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
                                height: Get.height * 0.06,
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
                                style: semiBold(
                                    color: ColorRes.black, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Text(
                              StringRes.name,
                              style:
                                  regular(fontSize: 14, color: ColorRes.black),
                            ),
                            SizedBox(
                              height: Get.height * 0.008,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter your name!";
                                }
                              },
                              onChanged: (value) {
                                if (value.isEmpty) {
                                  completeSignupController.isNameActive = false;
                                } else {
                                  completeSignupController.isNameActive = true;
                                }

                                controller.update(["complete"]);
                              },
                              onFieldSubmitted: (value) {
                                debugPrint("submitted");
                                if (completeSignupController
                                    .formKey.currentState!
                                    .validate()) {
                                  controller.update(["complete"]);
                                }
                              },
                              controller:
                                  completeSignupController.nameController,
                              decoration: InputDecoration(
                                hintText: StringRes.yourNme,
                                hintStyle: TextStyle(
                                    fontSize: 16, color: ColorRes.hinttext),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorRes.appColor, width: 0.6),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                enabled: true,
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 0.6,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorRes.appColor, width: 0.6),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorRes.textfieldBorder,
                                      width: 0.6),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                    width: 0.6,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                contentPadding:
                                    EdgeInsets.only(left: 10, bottom: 9),
                                suffixIcon:
                                    completeSignupController.isNameActive ==
                                            false
                                        ? Icon(
                                            Icons.error_outline_outlined,
                                            color: Colors.red,
                                          )
                                        : SizedBox(),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.027,
                            ),
                            Text(
                              StringRes.surname,
                              style:
                                  regular(fontSize: 14, color: ColorRes.black),
                            ),
                            SizedBox(
                              height: Get.height * 0.008,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter last name!";
                                }
                              },
                              onChanged: (value) {
                                if (value.isEmpty) {
                                  completeSignupController.isSurnameActive =
                                      false;
                                } else {
                                  completeSignupController.isSurnameActive =
                                      true;
                                }

                                controller.update(["complete"]);
                              },
                              onFieldSubmitted: (value) {
                                debugPrint("submitted");
                                if (completeSignupController
                                    .formKey.currentState!
                                    .validate()) {
                                  controller.update(["complete"]);
                                }
                              },
                              controller:
                                  completeSignupController.surnameController,
                              decoration: InputDecoration(
                                hintText: StringRes.yourLast,
                                hintStyle: TextStyle(
                                    fontSize: 16, color: ColorRes.hinttext),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorRes.appColor, width: 0.6),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                enabled: true,
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 0.6,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorRes.appColor, width: 0.6),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorRes.textfieldBorder,
                                      width: 0.6),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                    width: 0.6,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                ),
                                contentPadding:
                                    EdgeInsets.only(left: 10, bottom: 9),
                                suffixIcon:
                                    completeSignupController.isSurnameActive ==
                                            false
                                        ? Icon(
                                            Icons.error_outline_outlined,
                                            color: Colors.red,
                                          )
                                        : SizedBox(),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.027,
                            ),
                            Text(
                              StringRes.where,
                              style:
                                  regular(fontSize: 14, color: ColorRes.black),
                            ),
                            SizedBox(
                              height: Get.height * 0.023,
                            ),
                            // SizedBox(
                            //   height: Get.height * 0.117,
                            //   child: DropdownButtonFormField(
                            //     icon: Padding(
                            //       padding: const EdgeInsets.only(right: 19.5),
                            //       child: Image.asset("assets/icons/Icon.png"),
                            //     ),
                            //     onChanged: (String? value) {
                            //       completeSignupController.dropdownValue = value!;
                            //       controller.update(["complete"]);
                            //     },
                            //     decoration: const InputDecoration(
                            //       filled: true,
                            //       hintStyle: TextStyle(color: ColorRes.hinttext),
                            //       hintText: "Name",
                            //       fillColor: Color(0xffFFFFFF),
                            //       disabledBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //           color: Colors.grey,
                            //           width: 0.6,
                            //         ),
                            //         borderRadius:
                            //             BorderRadius.all(Radius.elliptical(10, 10)),
                            //       ),
                            //       border: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //             color: ColorRes.appColor, width: 0.6),
                            //         borderRadius:
                            //             BorderRadius.all(Radius.elliptical(10, 10)),
                            //       ),
                            //       focusedBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //             color: ColorRes.appColor, width: 0.6),
                            //         borderRadius:
                            //             BorderRadius.all(Radius.elliptical(10, 10)),
                            //       ),
                            //       enabledBorder: OutlineInputBorder(
                            //         borderSide:
                            //             BorderSide(color: Colors.grey, width: 0.6),
                            //         borderRadius:
                            //             BorderRadius.all(Radius.elliptical(10, 10)),
                            //       ),
                            //       errorBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //           color: Colors.redAccent,
                            //           width: 0.6,
                            //         ),
                            //         borderRadius:
                            //             BorderRadius.all(Radius.elliptical(10, 10)),
                            //       ),
                            //       contentPadding:
                            //           EdgeInsets.only(left: 10, bottom: 9),
                            //     ),
                            //     items: completeSignupController.list
                            //         .map((cityTitle) => DropdownMenuItem(
                            //             value: cityTitle,
                            //             child:
                            //                 Wrap(children: [Text("$cityTitle")])))
                            //         .toList(),
                            //   ),
                            // ),

                            SizedBox(
                              height: Get.height * 0.117,
                              child: DropdownButtonFormField(
                                icon: Padding(
                                  padding: const EdgeInsets.only(right: 19.5),
                                  child: Image.asset("assets/icons/Icon.png"),
                                ),
                                onChanged: (String? value) {
                                  completeSignupController.dropdownValue =
                                      value!;
                                  controller.update(["complete"]);
                                },
                                decoration: const InputDecoration(
                                  hintText: "Select team member",
                                  hintStyle: TextStyle(
                                      fontSize: 16, color: ColorRes.hinttext),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorRes.appColor, width: 0.6),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                  ),
                                  enabled: true,
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 0.6,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorRes.appColor, width: 0.6),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorRes.textfieldBorder,
                                        width: 0.6),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                      width: 0.6,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                  ),
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 9),
                                ),
                                items: completeSignupController.list
                                    .map((cityTitle) => DropdownMenuItem(
                                        value: cityTitle,
                                        child: Wrap(
                                            children: [Text("$cityTitle")])))
                                    .toList(),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (completeSignupController
                                    .formKey.currentState!
                                    .validate()) {
                                  Get.to(PasswordResetPage());
                                  controller.update(["complete"]);
                                }
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: Get.height * 0.063,
                                  width: Get.width * 0.456,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: completeSignupController
                                                    .nameController.text
                                                    .trim() !=
                                                "" &&
                                            completeSignupController
                                                    .surnameController.text
                                                    .trim() !=
                                                "" &&
                                            completeSignupController
                                                    .dropdownValue !=
                                                ""
                                        ? ColorRes.appColor
                                        : ColorRes.disableColor,
                                  ),
                                  child: Text(StringRes.complete,
                                      style: regular(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                ),
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
