import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/goal_screen/goal_controller.dart';
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
                  Get.to(() => TypeSellerScreen());
                },
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.only(
                      left: 10, right: 20, top: 25, bottom: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorRes.appColor)),
                  child: Row(
                    children: [
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
                            width: Get.width * 0.35,
                            child: Text(
                              StringRes.searchDetail,
                              style: overpassRegular(
                                  color: ColorRes.appColor, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        AssetRes.arrow,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: Get.width,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 25, bottom: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorRes.appColor)),
                child: Row(
                  children: [
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
                            width: Get.width * 0.35,
                            child: Text(
                              StringRes.sellOrRentDetail,
                              style: overpassRegular(
                                  color: ColorRes.appColor, fontSize: 14),
                            ))
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      AssetRes.arrow,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
