import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/createAccount/create_account_controller.dart';
import 'package:yitaku/screen/complete_signup/complete_signin_screen.dart';
import 'package:yitaku/screen/passwordReset/passwordResetPage.dart';
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
                          height: Get.height * 0.023,
                        ),
                        Text(
                          StringRes.email,
                          style: overpassRegular(fontSize: 14, color: ColorRes.black),
                        ),
                        SizedBox(
                          height: Get.height * 0.008,
                        ),
                        GetBuilder<CreateAccountController>(
                          id: "createEmail",
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
                                controller.isActiveEmailField = false;
                              } else {
                                controller.isActiveEmailField = true;
                              }
                              // blueLoginController.isActive= true;
                              /*   if (controller.formKey.currentState!.validate()) {
                              controller.activeField=false;
                            }
                            else{
                              controller.activeField=true;
                            }*/
                              controller.update(["createEmail"]);
                              controller.update(["createaccount"]);
                            },
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              hintText: StringRes.mailHInt,

                              // suffixIcon: Image.asset(AssetRes.iconError,height: 13,width: 13,fit: BoxFit.fill),
                              hintStyle: overpassRegular(
                                  fontSize: 16, color: ColorRes.hinttext),
                              suffixIcon: controller.isActiveEmailField == false
                                  ? Icon(
                                      Icons.error_outline_outlined,
                                      color: Colors.redAccent
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
                          height: Get.height * 0.016,
                        ),
                        Text(
                          StringRes.password,
                          style: overpassRegular(fontSize: 14, color: ColorRes.black),
                        ),
                        SizedBox(
                          height: Get.height * 0.016,
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
                              createAccountController.isActivePassField = false;
                            } else {
                              createAccountController.isActivePassField = true;
                            }

                            controller.update(["createaccount"]);
                          },
                          onFieldSubmitted: (value) {
                            debugPrint("submitted");
                            if (createAccountController.formKey.currentState!
                                .validate()) {
                              controller.update(["createaccount"]);
                            }
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          controller:
                              createAccountController.passwordController,
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
                                createAccountController.isActivePassField ==
                                        false
                                    ? Icon(
                                        Icons.error_outline_outlined,
                                        color: Colors.redAccent,
                                      )
                                    : SizedBox(),
                          ),
                        ),
                        controller.isPassError == true
                            ? Text("Please enter some text")
                            : SizedBox(),
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
                                  color: ColorRes.black,
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
                        GestureDetector(
                          onTap: () {
                            if(createAccountController.emailController.text.isNotEmpty && createAccountController.isChecked == true && createAccountController.passwordController.text.isNotEmpty)
                           {
                             if (createAccountController.formKey.currentState!
                                 .validate()
                             ) {
                               Get.to(CompleteSignupScreen());
                               controller.update(["createaccount"]);
                             }
                           }
                            else
                              return null;
                            controller.update(["createaccount"]);
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: Get.height * 0.063,
                              width: Get.width * 0.32,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: createAccountController
                                                .emailController.text
                                                .trim() !=
                                            "" &&
                                        createAccountController
                                                .passwordController.text
                                                .trim() !=
                                            "" &&
                                        createAccountController.isChecked ==
                                            true
                                    ? ColorRes.appColor
                                    : ColorRes.disableColor,
                              ),
                              child: Text("Sign up",
                                  style: overpassRegular(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
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
                              color: ColorRes.black,
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
