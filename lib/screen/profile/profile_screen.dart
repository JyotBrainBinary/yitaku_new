import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/blue_botton.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/edit_profile/edit_profile_screen.dart';
import 'package:yitaku/screen/profile/profile_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        id: "insurance",
        builder: (controller) => Scaffold(
              resizeToAvoidBottomInset: false,
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
                      child: Image.asset(AssetRes.user,
                          scale: 3.5, color: Colors.grey),
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
                      },
                      color: Colors.white,
                    ),
                    SizedBox(height: Get.height * 0.05),
                    profileController.logOutButton(onPressed: () {}),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          Get.dialog(
                            Dialog(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.01,
                                    ),
                                    Text("We're sad to see you leave!",
                                        style: overpassRegular(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: ColorRes.buttonColor)),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Text(
                                      "Are you sure you want to delete your profile on YITAKU?",
                                      textAlign: TextAlign.center,
                                      style: overpassRegular(
                                        color: ColorRes.color757575,
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.05,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Text(
                                              "NO",
                                              style: overpassRegular(
                                                  color: ColorRes.buttonColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          ElevatedButton(
                                            style: const ButtonStyle(
                                                fixedSize:
                                                    MaterialStatePropertyAll(
                                                        Size(90, 35)),
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        ColorRes.buttonColor)),
                                            onPressed: () {
                                              Get.back();
                                              Get.dialog(
                                                StatefulBuilder(builder:
                                                    (context, setState) {
                                                  return Dialog(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            SizedBox(
                                                              height:
                                                                  Get.height *
                                                                      0.01,
                                                            ),
                                                            Text(
                                                                "Please tell us why you're leaving",
                                                                style: overpassRegular(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: ColorRes
                                                                        .buttonColor)),
                                                            SizedBox(
                                                                height:
                                                                    Get.height *
                                                                        0.04),
                                                            Obx(
                                                              () =>
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  if (profileController
                                                                          .isDrop
                                                                          .value ==
                                                                      false) {
                                                                    profileController
                                                                        .isDrop
                                                                        .value = true;
                                                                    print(profileController
                                                                        .isDrop
                                                                        .value);
                                                                  } else {
                                                                    profileController
                                                                        .isDrop
                                                                        .value = false;
                                                                    print(
                                                                        "=== ${profileController.isDrop.value}");
                                                                  }
                                                                  setState.call(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 44,
                                                                  width:
                                                                      Get.width,
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 15,
                                                                      right:
                                                                          15),
                                                                  decoration: BoxDecoration(
                                                                      border: Border.all(
                                                                          width:
                                                                              1,
                                                                          color: Colors
                                                                              .grey),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5)),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        profileController
                                                                            .selectItem,
                                                                        style: const TextStyle(
                                                                            color:
                                                                                Colors.grey),
                                                                      ),
                                                                      const Spacer(),
                                                                      (profileController
                                                                              .isDrop
                                                                              .value)
                                                                          ? const Icon(
                                                                              Icons.keyboard_arrow_up_rounded,
                                                                              color: ColorRes.fontGrey,
                                                                            )
                                                                          : const Icon(
                                                                              Icons.keyboard_arrow_down_rounded,
                                                                              color: ColorRes.fontGrey,
                                                                            ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 5),
                                                            (profileController
                                                                    .isDrop
                                                                    .value)
                                                                ? Container(
                                                                    width: Get
                                                                        .width,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      color: ColorRes
                                                                          .white,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color: ColorRes
                                                                              .textfieldBorder
                                                                              .withOpacity(0.5),
                                                                          blurRadius:
                                                                              10,
                                                                          spreadRadius:
                                                                              0.5,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      children: List.generate(
                                                                          profileController
                                                                              .item
                                                                              .length,
                                                                          (index) {
                                                                        return InkWell(
                                                                          onTap:
                                                                              () {
                                                                            profileController.isDrop.value =
                                                                                false;
                                                                            profileController.selectItem =
                                                                                profileController.item[index];
                                                                            profileController.update([
                                                                              "insurance"
                                                                            ]);
                                                                            setState.call(() {});
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            margin: const EdgeInsets.only(
                                                                                top: 10,
                                                                                left: 10,
                                                                                right: 10),
                                                                            height:
                                                                                30,
                                                                            child: Align(
                                                                                alignment: Alignment.topLeft,
                                                                                child: Text(
                                                                                  profileController.item[index],
                                                                                  style: const TextStyle(color: Colors.grey),
                                                                                )),
                                                                          ),
                                                                        );
                                                                      }),
                                                                    ),
                                                                  )
                                                                : const SizedBox(),
                                                            SizedBox(
                                                                height:
                                                                    Get.height *
                                                                        0.02),
                                                            SizedBox(
                                                                height: 40,
                                                                child:
                                                                    TextField(
                                                                  controller:
                                                                      profileController
                                                                          .specifyController,
                                                                  decoration: const InputDecoration(
                                                                      focusedBorder: OutlineInputBorder(
                                                                          borderSide: BorderSide(
                                                                              color: Colors
                                                                                  .grey)),
                                                                      hintStyle: TextStyle(
                                                                          height:
                                                                              3,
                                                                          color: Colors
                                                                              .grey),
                                                                      hintText:
                                                                          "Please specify...",
                                                                      border:
                                                                          OutlineInputBorder()),
                                                                )),
                                                            SizedBox(
                                                                height:
                                                                    Get.height *
                                                                        0.01),
                                                            SizedBox(
                                                                height: 40,
                                                                child:
                                                                    TextField(
                                                                  controller:
                                                                      profileController
                                                                          .tellUsMoreController,
                                                                  decoration: const InputDecoration(
                                                                      focusedBorder: OutlineInputBorder(
                                                                          borderSide: BorderSide(
                                                                              color: Colors
                                                                                  .grey)),
                                                                      hintStyle: TextStyle(
                                                                          height:
                                                                              3,
                                                                          color: Colors
                                                                              .grey),
                                                                      hintText:
                                                                          "Please tell us more...",
                                                                      border:
                                                                          OutlineInputBorder()),
                                                                )),
                                                            SizedBox(
                                                                height:
                                                                    Get.height *
                                                                        0.05),
                                                            Text(
                                                                "Once you click 'Delete Profile' all your data will be deleted with no possibility of retrieving the information",
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: overpassRegular(
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: ColorRes
                                                                        .buttonColor)),
                                                            SizedBox(
                                                                height:
                                                                    Get.height *
                                                                        0.02),
                                                            ElevatedButton(
                                                                style: ButtonStyle(
                                                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                25))),
                                                                    fixedSize:
                                                                        MaterialStatePropertyAll(Size(
                                                                            Get
                                                                                .width,
                                                                            32)),
                                                                    backgroundColor:
                                                                        const MaterialStatePropertyAll(ColorRes
                                                                            .buttonColor)),
                                                                onPressed: () {
                                                                  Get.back();
                                                                },
                                                                child: const Text(
                                                                    "DELETE PROFILE")),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                            child: const Text("Yes"),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          StringRes.deleteProfile,
                          style: overpassRegular(
                            color: const Color(0xFF757575),
                          ),
                        )),
                  ],
                ),
              ),
            ));
  }
}
