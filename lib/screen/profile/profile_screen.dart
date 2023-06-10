import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/blue_botton.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/edit_profile/edit_profile_screen.dart';
import 'package:yitaku/screen/profile/profile_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4285F4),
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.04),
            Center(
                child: Text(
              StringRes.firstNameLastName,
              style: overpassRegular(
                  color: const Color(0xFF757575),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(height: Get.height * 0.01),
            Container(
              height: Get.height * 0.35,
              width: Get.width * 0.55,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AssetRes.user, scale: 3.5, color: Colors.grey),
            ),
            SizedBox(height: Get.height * 0.04),
            Text(
              StringRes.email,
              style: overpassRegular(
                fontSize: 16,
                color: const Color(0xFF757575),
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            BlueBotton(
              height: Get.height * 0.065,
              buttonText: StringRes.updateProfile,
              onPressed: () {
                Get.to(() => EditProfileScreen());
              }, color: Colors.white,
            ),
            SizedBox(height: Get.height * 0.05),
            profileController.logOutButton(onPressed: () {}),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  StringRes.deleteProfile,
                  style: overpassRegular(
                    color: const Color(0xFF757575),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
