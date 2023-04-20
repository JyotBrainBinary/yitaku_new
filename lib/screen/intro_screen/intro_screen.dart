import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:yitaku/common/widget/logo.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/intro_screen/intro_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IntroController introController = Get.put(IntroController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.only(right: Get.width * 0.03, left: Get.width * 0.03),
          child: GetBuilder<IntroController>(
            id: "intro",
            builder: (controller) {
              return Column(
                children: [
                  SizedBox(
                    // height: Get.height * 0.037,
                    height: Get.height * 0.06,
                  ),
                  LogoImage(),
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
                  // Expanded(
                  //   child: PageView.builder(
                  //     onPageChanged: (value) {
                  //
                  //     },
                  //     itemBuilder: (context, index) => Column(
                  //       children: [
                  //         Text(
                  //           introController.title[index],
                  //           style: overpassRegular(
                  //               fontWeight: FontWeight.w500,
                  //               fontSize: 24,
                  //               color: ColorRes.black),
                  //         ),
                  //         SizedBox(
                  //           height: Get.height * 0.041,
                  //         ),
                  //         Image.asset(
                  //           introController.introImage[index],
                  //           height: Get.height * 0.3030,
                  //           width: Get.width * 0.7146,
                  //         ),
                  //         SizedBox(
                  //           height: Get.height * 0.017,
                  //         ),
                  //         Text(
                  //           introController.description[index],
                  //           textAlign: TextAlign.center,
                  //           style: overpassRegular(
                  //               fontWeight: FontWeight.w400,
                  //               fontSize: 14,
                  //               color: ColorRes.black),
                  //         ),
                  //         SizedBox(
                  //           height: Get.height * 0.031,
                  //         ),
                  //       ],
                  //     ),
                  //     itemCount: introController.title.length,
                  //   ),
                  // ),
                  Expanded(
                    child: CarouselSlider.builder(
                      carouselController: introController.carouselController,
                      itemBuilder: (context, index, realIndex) => Column(
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
                            height: Get.height * 0.031,
                          ),
                        ],
                      ),
                      itemCount: introController.title.length,

                      options: CarouselOptions(

                        onPageChanged: (index, reason) {
                          

                         
                        },
                        height: double.infinity,
                        initialPage: 0,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1,
                      ),
                    ),
                  ),

                  Row(
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
                        color: 
                             ColorRes.appColor,
                           
                      ),
                      SizedBox(
                        width: Get.width * 0.024,
                      ),
                      Container(
                        height: Get.height * 0.0072,
                        width: Get.width * 0.2,
                        // width: Get.width * 0.186,
                        color: 
                             ColorRes.appColor
                            
                      ),
                      SizedBox(
                        width: Get.width * 0.024,
                      ),
                      Container(
                        height: Get.height * 0.0072,
                        // width: Get.width * 0.186,
                        width: Get.width * 0.2,
                        color: 
                             ColorRes.appColor
                           
                      ),
                    ],
                  ),

                  SizedBox(
                    // height: Get.height * 0.028,
                    height: Get.height * 0.03,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.034,
                      ),
                      GestureDetector(
                        onTap: () {
                          introController.carouselController.previousPage(
                            duration: Duration(milliseconds: 100),
                          );
                        },
                        child: Text(
                          "Back",
                          style: overpassRegular(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            textdeco: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                      onTap: () {
                        introController.carouselController.nextPage(
                          duration: Duration(milliseconds: 100),
                        );
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
                                  fontSize: 16, fontWeight: FontWeight.w600)),
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
                  Row(
                    children: [
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          StringRes.skip,
                          style: overpassRegular(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            textdeco: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.034,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.041,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
