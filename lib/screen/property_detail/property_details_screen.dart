// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/property_detail/property_details_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class PropertyDetailsScreen extends StatelessWidget {
  PropertyDetailsScreen({Key? key}) : super(key: key);

  PropertyDetailsController controller = Get.put(PropertyDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        centerTitle: true,
        elevation: 0,
        backgroundColor: ColorRes.color3879E8,
        title: Text(
          StringRes.propertyDetails,
          style: overpassRegular(fontSize: 20),
        ),
        actions: [
          Image.asset(
            AssetRes.hart,
            height: 25,
            width: 25,
          ),
          SizedBox(width: Get.width * 0.03),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// image slider
                    GetBuilder<PropertyDetailsController>(
                        id: "image",
                        builder: (controller) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  height: 200,
                                  width: Get.width,
                                  child: PageView.builder(
                                      controller: controller.pageController,
                                      itemCount: controller.image.length,
                                      onPageChanged: (val) {
                                        controller.pageIndex = val;
                                        controller.update(["image"]);
                                      },
                                      itemBuilder: (context, index) {
                                        return Container(
                                          height: 200,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      controller.image[index]),
                                                  fit: BoxFit.cover)),
                                        );
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      (controller.pageIndex == 0)
                                          ? Container(
                                              height: 20,
                                              width: 20,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ColorRes.black
                                                    .withOpacity(0.3),
                                              ),
                                              child: const Icon(
                                                  Icons
                                                      .arrow_back_ios_new_sharp,
                                                  color: ColorRes.white,
                                                  size: 12),
                                            )
                                          : InkWell(
                                              onTap: () {
                                                controller.pageIndex--;
                                                controller.pageController
                                                    .animateToPage(
                                                  controller.pageIndex,
                                                  duration: const Duration(
                                                      milliseconds: 400),
                                                  curve: Curves.easeInOut,
                                                );
                                                controller.update(["image"]);
                                              },
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: ColorRes.black
                                                      .withOpacity(0.6),
                                                ),
                                                child: const Icon(
                                                    Icons
                                                        .arrow_back_ios_new_sharp,
                                                    color: ColorRes.white,
                                                    size: 12),
                                              ),
                                            ),
                                      (controller.pageIndex ==
                                              controller.image.length - 1)
                                          ? Container(
                                              height: 20,
                                              width: 20,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ColorRes.black
                                                    .withOpacity(0.3),
                                              ),
                                              child: const Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: ColorRes.white,
                                                size: 12,
                                              ))
                                          : InkWell(
                                              onTap: () {
                                                controller.pageIndex++;
                                                controller.pageController
                                                    .animateToPage(
                                                        controller.pageIndex,
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    400),
                                                        curve:
                                                            Curves.easeInOut);
                                                controller.update(["image"]);
                                              },
                                              child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ColorRes.black
                                                        .withOpacity(0.6),
                                                  ),
                                                  child: const Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    color: ColorRes.white,
                                                    size: 12,
                                                  )),
                                            ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),

                    //------------------------------------------------- Mid Part Of Screen--------------------------------------
                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 22),
                      child: controller.midPart(),
                    ),
                    //------------------------------------------------- End Part Of Screen--------------------------------------
                    controller.endPart(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
