import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/goal_screen/goal_controller.dart';
import 'package:yitaku/screen/home_screen_two/home_screen_two.dart';
import 'package:yitaku/screen/intro_screen/intro_screen.dart';
import 'package:yitaku/screen/typeSeller_screen/type_seller_screen.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

import '../../common/widget/logo.dart';
import '../../utils/StringRes.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GoalController goalController = Get.put(GoalController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              ///top
              SizedBox(
                height: Get.height * 0.08,
              ),
              const Align(
                alignment: Alignment.center,
                child: LogoImage(),
              ),
              SizedBox(
                height: Get.height * 0.028,
              ),
              Text(
                StringRes.tellUsAboutYourGoals,
                style: overpassRegular(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: ColorRes.fontGrey),
              ),
              const SizedBox(height: 50),

              ///last
              InkWell(
                onTap: () {

                  // Get.to(() => HomeScreenTwo());

                },
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.only(top: 29, bottom: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorRes.stroke)),
                  child: Row(
                    children: [
                      SizedBox(width: Get.width * 0.05),
                      Image.asset(AssetRes.searchHome, height: 50),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringRes.search,
                            style: regular(
                              color: ColorRes.color192E81,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: Get.width * 0.5,
                            child: Text(
                              StringRes.searchDetail,
                              style: overpassRegular(
                                  color: ColorRes.color365CC0, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        AssetRes.arrow,
                        height: 20,
                      ),
                      SizedBox(width: Get.width * 0.04),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  // go to intro screen
                  Get.to(TypeSellerScreen());
                },
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.only(top: 29, bottom: 25,left: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorRes.stroke)),
                  child: Row(
                    children: [
                      SizedBox(width: Get.width * 0.05),
                      Image.asset(AssetRes.sellOrRent, height: 35),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringRes.sellOrRent,
                            style: regular(
                              color: ColorRes.color192E81,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                              width: Get.width * 0.45,
                              child: Text(
                                StringRes.sellOrRentDetail,
                                textAlign: TextAlign.start,
                                style: overpassRegular(
                                  color: ColorRes.color365CC0,
                                  fontSize: 16,
                                ),
                              ))
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        AssetRes.arrow,
                        height: 20,
                      ),
                      SizedBox(width: Get.width * 0.04),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
