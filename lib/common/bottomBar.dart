// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/dashbord/dashboard_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

Widget bottomNavigationBar(BuildContext context) {
  return Container(
    width: Get.width,
    height: 60,
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(
        top: BorderSide(
          color: ColorRes.colorEAECF0,
        ),
      ),
    ),
    child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: GetBuilder<DashboardController>(
            id: "bottom_bar",
            builder: (dashboardController) {
              return Column(
                children: [
                  SizedBox(height: Get.height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          dashboardController.currentTab = 0;
                          dashboardController.update(["bottom_bar"]);
                        },
                        child: (dashboardController.currentTab == 0)
                            ? Column(
                                children: [
                                  Image.asset(AssetRes.home,
                                      height: 20, color: ColorRes.color3879E8),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.home,
                                    style: overpassRegular(
                                      fontSize: 12,
                                      color: ColorRes.color3879E8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Image.asset(AssetRes.home, height: 20),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.home,
                                    style: overpassRegular(
                                        fontSize: 12, color: ColorRes.fontGrey),
                                  ),
                                ],
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          dashboardController.currentTab = 1;
                          dashboardController.update(["bottom_bar"]);
                        },
                        child: (dashboardController.currentTab == 1)
                            ? Column(
                                children: [
                                  Image.asset(AssetRes.searchBottom,
                                      height: 20, color: ColorRes.color3879E8),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.search,
                                    style: overpassRegular(
                                      fontSize: 12,
                                      color: ColorRes.color3879E8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Image.asset(
                                    AssetRes.searchBottom,
                                    height: 20,
                                    color: ColorRes.black,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.search,
                                    style: overpassRegular(
                                        fontSize: 12, color: ColorRes.fontGrey),
                                  ),
                                ],
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          dashboardController.currentTab = 2;
                          dashboardController.update(["bottom_bar"]);
                        },
                        child: (dashboardController.currentTab == 2)
                            ? Column(
                                children: [
                                  Image.asset(AssetRes.favorites,
                                      height: 20, color: ColorRes.color3879E8),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.favorites,
                                    style: overpassRegular(
                                      fontSize: 12,
                                      color: ColorRes.color3879E8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Image.asset(AssetRes.favorites, height: 20),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.favorites,
                                    style: overpassRegular(
                                        fontSize: 12, color: ColorRes.fontGrey),
                                  ),
                                ],
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          dashboardController.currentTab = 3;
                          dashboardController.update(["bottom_bar"]);
                        },
                        child: (dashboardController.currentTab == 3)
                            ? Column(
                                children: [
                                  Image.asset(AssetRes.profile,
                                      height: 20, color: ColorRes.color3879E8),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.profile,
                                    style: overpassRegular(
                                      fontSize: 12,
                                      color: ColorRes.color3879E8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Image.asset(AssetRes.profile, height: 20),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.profile,
                                    style: overpassRegular(
                                        fontSize: 12, color: ColorRes.fontGrey),
                                  ),
                                ],
                              ),
                      ),
                    ],
                  ),
                ],
              );
            })),
  );
}

Widget bottomNavigationBar2(BuildContext context)   {
  return Container(
    width: Get.width,
    height: 60,
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(
        top: BorderSide(color: ColorRes.colorEAECF0),
      ),
    ),
    child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: GetBuilder<DashboardController>(
            id: "bottom_bar",
            builder: (dashboardController) {
              return Column(
                children: [
                  SizedBox(height: Get.height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          dashboardController.currentTab2 = 0;
                          dashboardController.update(["bottom_bar"]);
                        },
                        child: (dashboardController.currentTab2 == 0)
                            ? Column(
                                children: [
                                  Image.asset(AssetRes.searchBottom,
                                      height: 20, color: ColorRes.color3879E8),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.search,
                                    style: overpassRegular(
                                      fontSize: 12,
                                      color: ColorRes.color3879E8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Image.asset(
                                    AssetRes.searchBottom,
                                    height: 20,
                                    color: ColorRes.hinttext,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.search,
                                    style: overpassRegular(
                                        fontSize: 12, color: ColorRes.hinttext),
                                  ),
                                ],
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          dashboardController.currentTab2 = 1;
                          dashboardController.update(["bottom_bar"]);
                        },
                        child: (dashboardController.currentTab2 == 1)
                            ? Column(
                                children: [
                                  Image.asset(AssetRes.loanCalculator,
                                      height: 20, color: ColorRes.color3879E8),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.loanCalculator,
                                    style: overpassRegular(
                                      fontSize: 12,
                                      color: ColorRes.color3879E8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Image.asset(AssetRes.loanCalculator,
                                      height: 20),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.loanCalculator,
                                    style: overpassRegular(
                                        fontSize: 12, color: ColorRes.hinttext),
                                  ),
                                ],
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          dashboardController.currentTab2 = 2;
                          dashboardController.update(["bottom_bar"]);
                        },
                        child: (dashboardController.currentTab2 == 2)
                            ? Column(
                                children: [
                                  Image.asset(AssetRes.insurance,
                                      height: 20, color: ColorRes.color3879E8),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.insurance,
                                    style: overpassRegular(
                                      fontSize: 12,
                                      color: ColorRes.color3879E8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Image.asset(AssetRes.insurance, height: 20),
                                  const SizedBox(height: 5),
                                  Text(
                                    StringRes.insurance,
                                    style: overpassRegular(
                                        fontSize: 12, color: ColorRes.hinttext),
                                  ),
                                ],
                              ),
                      ),
                    ],
                  ),
                ],
              );
            })),
  );
}
