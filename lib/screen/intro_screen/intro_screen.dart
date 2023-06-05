import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/logo.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/dashbord/dashboard_screen.dart';
import 'package:yitaku/screen/intro_screen/intro_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final IntroController introController = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.only(right: Get.width * 0.05, left: Get.width * 0.05),
          child: GetBuilder<IntroController>(
            id: "intro",
            builder: (controller) {
              return Column(
                children: [
                  /// top
                  SizedBox(
                    // height: Get.height * 0.037,
                    height: Get.height * 0.06,
                  ),
                  const LogoImage(),
                  SizedBox(
                    // height: Get.height * 0.017,
                    height: Get.height * 0.02,
                  ),
                  Text(
                    StringRes.telUs,
                    style: overpassRegular(
                        fontWeight: FontWeight.w400,
                        color: ColorRes.black,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: Get.height * 0.055,
                  ),

                  ///pageview

                  Expanded(
                    child: SizedBox(
                      height: Get.height * 0.5,
                      child: PageView.builder(
                          controller: controller.pageController,
                          itemCount: controller.title.length,
                          onPageChanged: (val) {
                            controller.pageIndex = val;
                            controller.update(["intro"]);
                          },
                          itemBuilder: (context, index) {
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    introController.title[index],
                                    style: overpassRegular(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 24,
                                        color: ColorRes.black),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.035,
                                  ),
                                  Image.asset(
                                    introController.introImage[index],
                                    height: Get.height * 0.3030,
                                    width: Get.width * 0.7146,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.017,
                                  ),
                                  Text(
                                    introController.description[index],
                                    textAlign: TextAlign.center,
                                    style: overpassRegular(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: ColorRes.black),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.041,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),

                  /// slider

                  (introController.pageIndex == 0)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: Get.height * 0.0072,
                              // width: Get.width * 0.186,
                              width: Get.width * 0.2,

                              color: ColorRes.appColor,
                            ),
                            SizedBox(
                              width: Get.width * 0.024,
                            ),
                            Container(
                              height: Get.height * 0.0072,
                              width: Get.width * 0.2,
                              // width: Get.width * 0.186,
                              color: ColorRes.colorD9D9D9,
                            ),
                            SizedBox(
                              width: Get.width * 0.024,
                            ),
                            Container(
                                height: Get.height * 0.0072,
                                width: Get.width * 0.2,
                                // width: Get.width * 0.186,
                                color: ColorRes.colorD9D9D9),
                            SizedBox(
                              width: Get.width * 0.024,
                            ),
                            Container(
                                height: Get.height * 0.0072,
                                // width: Get.width * 0.186,
                                width: Get.width * 0.2,
                                color: ColorRes.colorD9D9D9),
                          ],
                        )
                      : (introController.pageIndex == 1)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: Get.height * 0.0072,
                                  // width: Get.width * 0.186,
                                  width: Get.width * 0.2,

                                  color: ColorRes.appColor,
                                ),
                                SizedBox(
                                  width: Get.width * 0.024,
                                ),
                                Container(
                                  height: Get.height * 0.0072,
                                  width: Get.width * 0.2,
                                  // width: Get.width * 0.186,
                                  color: ColorRes.appColor,
                                ),
                                SizedBox(
                                  width: Get.width * 0.024,
                                ),
                                Container(
                                    height: Get.height * 0.0072,
                                    width: Get.width * 0.2,
                                    // width: Get.width * 0.186,
                                    color: ColorRes.colorD9D9D9),
                                SizedBox(
                                  width: Get.width * 0.024,
                                ),
                                Container(
                                    height: Get.height * 0.0072,
                                    // width: Get.width * 0.186,
                                    width: Get.width * 0.2,
                                    color: ColorRes.colorD9D9D9),
                              ],
                            )
                          : (introController.pageIndex == 2)
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: Get.height * 0.0072,
                                      // width: Get.width * 0.186,
                                      width: Get.width * 0.2,

                                      color: ColorRes.appColor,
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.024,
                                    ),
                                    Container(
                                      height: Get.height * 0.0072,
                                      width: Get.width * 0.2,
                                      // width: Get.width * 0.186,
                                      color: ColorRes.appColor,
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.024,
                                    ),
                                    Container(
                                        height: Get.height * 0.0072,
                                        width: Get.width * 0.2,
                                        // width: Get.width * 0.186,
                                        color: ColorRes.appColor),
                                    SizedBox(
                                      width: Get.width * 0.024,
                                    ),
                                    Container(
                                        height: Get.height * 0.0072,
                                        // width: Get.width * 0.186,
                                        width: Get.width * 0.2,
                                        color: ColorRes.colorD9D9D9),
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: Get.height * 0.0072,
                                      // width: Get.width * 0.186,
                                      width: Get.width * 0.2,

                                      color: ColorRes.appColor,
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.024,
                                    ),
                                    Container(
                                      height: Get.height * 0.0072,
                                      width: Get.width * 0.2,
                                      // width: Get.width * 0.186,
                                      color: ColorRes.appColor,
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.024,
                                    ),
                                    Container(
                                        height: Get.height * 0.0072,
                                        width: Get.width * 0.2,
                                        // width: Get.width * 0.186,
                                        color: ColorRes.appColor),
                                    SizedBox(
                                      width: Get.width * 0.024,
                                    ),
                                    Container(
                                        height: Get.height * 0.0072,
                                        // width: Get.width * 0.186,
                                        width: Get.width * 0.2,
                                        color: ColorRes.appColor),
                                  ],
                                ),

                  SizedBox(
                    // height: Get.height * 0.028,
                    height: Get.height * 0.03,
                  ),

                  /// back and next
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.034,
                      ),
                      (controller.pageIndex == 0)
                          ? GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: ColorRes.color2F3941))),
                                child: Text(
                                  "Back",
                                  style: overpassRegular(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: ColorRes.color2F3941,
                                    //textdeco: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                controller.pageIndex--;
                                controller.pageController.animateToPage(
                                    controller.pageIndex,
                                    duration: const Duration(microseconds: 400),
                                    curve: Curves.easeInOut);
                                controller.update(["intro"]);
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: ColorRes.color2F3941))),
                                child: Text(
                                  "Back",
                                  style: overpassRegular(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    //textdeco: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                      const Spacer(),
                      (controller.pageIndex == 3)
                          ? GestureDetector(
                              onTap: () {
                                Get.to(() => DashboardScreen());
                              },
                              child: Container(
                                height: Get.height * 0.063,
                                width: Get.width * 0.186,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorRes.appColor),
                                child: Text("Finish",
                                    style: overpassRegular(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                controller.pageIndex++;
                                // controller.pageController.animateToPage(controller.pageIndex, duration: Duration(microseconds: 400), curve: Curves.easeInOut);
                                controller.pageController.animateToPage(
                                    controller.pageIndex,
                                    duration: const Duration(microseconds: 400),
                                    curve: Curves.easeInOut);
                                controller.update(["intro"]);
                              },
                              child: Container(
                                height: Get.height * 0.063,
                                width: Get.width * 0.186,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorRes.appColor),
                                child: Text("Next",
                                    style: overpassRegular(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                      SizedBox(
                        width: Get.width * 0.034,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: Get.height * 0.049,
                  ),

                  /// skip
                  Row(
                    children: [
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: controller.pageIndex == 3
                            ? const SizedBox()
                            : GestureDetector(
                                onTap: () {
                                  Get.to(DashboardScreen());
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: ColorRes.color2F3941))),
                                  child: Text(
                                    StringRes.skip,
                                    style: overpassRegular(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: ColorRes.color2F3941,
                                      //textdeco: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(width: Get.width * 0.034),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.041),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
