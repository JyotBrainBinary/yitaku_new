// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/blue_botton.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/edit_profile/edit_profile_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  EditProfileController editProfileController =
      Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4285F4),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text("My Profile"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * 0.03),
                Text(StringRes.email,
                    style: overpassRegular(color: const Color(0xFF757575))),
                SizedBox(height: Get.height * 0.015),
                editProfileController.commonTextFilled(
                    editProfileController.emailController,
                    StringRes.enterEmail),
                SizedBox(height: Get.height * 0.03),
                Text(StringRes.password,
                    style: overpassRegular(color: const Color(0xFF757575))),
                SizedBox(height: Get.height * 0.015),
                editProfileController.commonTextFilled(
                    editProfileController.passController,
                    StringRes.enterPasswordT),
                SizedBox(height: Get.height * 0.03),
                Text(StringRes.mobileNumber,
                    style: overpassRegular(color: const Color(0xFF757575))),
                SizedBox(height: Get.height * 0.015),
                editProfileController.commonTextFilled(
                    editProfileController.noController,
                    StringRes.enterMobileNumber),
                SizedBox(height: Get.height * 0.03),
                Text(StringRes.name,
                    style: overpassRegular(color: const Color(0xFF757575))),
                SizedBox(height: Get.height * 0.015),
                editProfileController.commonTextFilled(
                    editProfileController.nameController, StringRes.enterName),
                SizedBox(height: Get.height * 0.03),
                Text(StringRes.surname,
                    style: overpassRegular(color: const Color(0xFF757575))),
                SizedBox(height: Get.height * 0.015),
                editProfileController.commonTextFilled(
                    editProfileController.surnameController,
                    StringRes.enterSurname),
                SizedBox(height: Get.height * 0.03),
                Text(StringRes.profilePicture,
                    style: overpassRegular(color: const Color(0xFF757575))),
                SizedBox(height: Get.height * 0.015),
                GetBuilder<EditProfileController>(
                  id: "image",
                  builder:(controller) =>  editProfileController.image == null
                      ? Container(
                          alignment: Alignment.center,
                          height: Get.height * 0.3,
                          width: Get.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: InkWell(
                              onTap: () {
                                selectPicture();
                                editProfileController.update(["image"]);
                              },
                              child: const Text(StringRes.choosePhoto)),
                        )
                      : Container(
                          alignment: Alignment.center,
                          height: Get.height * 0.3,
                          width: Get.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(editProfileController.image!),
                            ),
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                ),
                SizedBox(height: Get.height * 0.03),
                BlueBotton(
                    height: Get.height * 0.055,
                    buttonText: "Update Profile",
                    onPressed: () {},
                    color: Colors.black54),
                SizedBox(height: Get.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  selectPicture() async {
    editProfileController.getImage();
    editProfileController.update(["image"]);
  }
}
