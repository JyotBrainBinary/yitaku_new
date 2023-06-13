import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/Auth/login_signup/login_signup_screen.dart';
import 'package:yitaku/screen/profile/profile_screen.dart';
import 'package:yitaku/screen/term_and_condition/terms_and_condition_screen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

import '../Auth/createAccount/create_account_screen.dart';

class HomeControllerTwo extends GetxController {
  bool isOpenList = false;

  bool isForSale = true;

  commonRow(image, title) {
    return Row(
      children: [
        Image.asset(image,
            height: 22, width: 22, color: const Color(0xFF666666)),
        SizedBox(width: Get.width * 0.06),
        Text(title,
            style: overpassRegular(fontSize: 18, color: ColorRes.color757575)),
      ],
    );
  }

  // Drawer ===========================================
  drawerOpen() {
    return Drawer(
      width: 280,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              height: 100,
              width: Get.width,
              color: const Color(0xFF4285F4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: Get.width * 0.01),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white60, shape: BoxShape.circle),
                    child: Icon(Icons.person,
                        color: Colors.grey.shade400, size: 35),
                  ),
                  Text("First Name Last Name",
                      style: overpassRegular(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.close, color: Color(0xFF424242))),
                  SizedBox(width: Get.width * 0.01),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => ProfileScreen());
                    },
                    child: commonRow(AssetRes.profile, "Profile"),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  InkWell(
                    onTap: () {},
                    child: commonRow(AssetRes.profile, "Log In"),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  commonRow(AssetRes.my_property_icon, "My Property Alert"),
                  SizedBox(height: Get.height * 0.05),
                  commonRow(AssetRes.list_a_property, "List A Property"),
                  SizedBox(height: Get.height * 0.03),
                ],
              ),
            ),
            const Divider(
              height: 0.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.03),
                  InkWell(
                    onTap: () {
                      Get.to(() => const TermAndConditionScreen());
                    },
                    child: commonRow(AssetRes.t_and_c, "Terms & Condition"),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  commonRow(AssetRes.send_feedback, "Send Feedback"),
                  SizedBox(height: Get.height * 0.08),
                  commonRow(AssetRes.support, "Support"),
                  SizedBox(height: Get.height * 0.03),
                  commonRow(AssetRes.rate_the_app, "Rate the Apps"),
                  SizedBox(height: Get.height * 0.03),
                  commonRow(AssetRes.log_out, "Log Out"),
                  SizedBox(height: Get.height * 0.03),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  accountRequiredDialog() {
    return Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.close, color: Colors.black87)),
                ],
              ),
              SizedBox(height: Get.height * 0.035),
              Text("Account Required",
                  style: overpassRegular(
                      color: ColorRes.buttonColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
              SizedBox(height: Get.height * 0.04),
              Text("Log in to use this feature.",
                  style: overpassRegular(
                      color: ColorRes.color757575,
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              SizedBox(height: Get.height * 0.06),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                      fixedSize:
                          MaterialStatePropertyAll(Size(Get.width * 0.6, 30)),
                      backgroundColor:
                          const MaterialStatePropertyAll(ColorRes.buttonColor)),
                  onPressed: () {
                    Get.to(() => CreateaccountScreen());
                  },
                  child: const Text("CREATE FREE ACCOUNT")),
              SizedBox(height: Get.height * 0.04),
              InkWell(
                onTap: () => Get.to(() => LoginSignupScreen()),
                child: Text("Already have an account? Log in",
                    style: overpassRegular(
                        color: ColorRes.color757575,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: Get.height * 0.06),
            ],
          ),
        ),
      ),
    );
  }

  showDialogFeeding(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            insetPadding: const EdgeInsets.symmetric(horizontal: 30),
            contentPadding: EdgeInsets.zero,
            content: SizedBox(
              height: 280,
              width: 300,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const SizedBox(
                            height: 23,
                            width: 23,
                            child: Icon(Icons.close),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: Get.width * 0.706,
                    color: ColorRes.color757575.withOpacity(0.10),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 60,
                      width: Get.width * 0.706,
                      decoration: BoxDecoration(
                          color: ColorRes.buttonColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text(StringRes.loanAmount)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 60,
                      width: Get.width * 0.706,
                      decoration: BoxDecoration(
                          color: ColorRes.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text(StringRes.monthlyRepayment)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
