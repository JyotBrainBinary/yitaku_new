import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/home_screen_two/home_controller_two.dart';
import 'package:yitaku/screen/profile/profile_screen.dart';
import 'package:yitaku/screen/property_detail/property_details_screen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  final HomeControllerTwo homeControllerTwo = Get.put(HomeControllerTwo());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer --------------------------------------------
        drawer: homeControllerTwo.drawerOpen(),
        appBar: AppBar(
          toolbarHeight: 65,
          backgroundColor: ColorRes.color3879E8,
          title: Image.asset(
            AssetRes.whiteLogo,
            height: 19,
          ),
          actions: [
            Row(
              children: [
                Image.asset(
                  AssetRes.jalebi,
                  height: 24,
                ),
                const SizedBox(width: 12),
                Image.asset(
                  AssetRes.hart,
                  height: 19,
                ),
                const SizedBox(width: 12),
                Image.asset(
                  AssetRes.msg,
                  height: 19,
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
        body: GetBuilder<HomeControllerTwo>(
          id: "homeTwo",
          builder: (controller) {
            return Column(
              children: [
                ///---------Filter (3)----------
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        "Filter (3)",
                        style: overpassRegular(
                          color: ColorRes.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      //filter icon------------------------------------
                      GestureDetector(
                        onTap: () {
                          /*  if (homeControllerTwo.isOpenList == false) {
                            homeControllerTwo.isOpenList = true;
                            controller.update(["homeTwo"]);
                          } else {
                            homeControllerTwo.isOpenList = false;
                            controller.update(["homeTwo"]);
                          } */
                        },
                        child: Image.asset(
                          AssetRes.downList,
                          height: 12,
                          color: ColorRes.blue,
                        ),
                      ),
                    ],
                  ),
                ),

                ///------ tab bar --------
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 15.0,
                        offset: const Offset(0, 8),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            if (homeControllerTwo.isForSale == false) {
                              homeControllerTwo.isForSale = true;
                            } else {
                              homeControllerTwo.isForSale = false;
                            }
                            controller.update(["homeTwo"]);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 44,
                            color: (homeControllerTwo.isForSale == true)
                                ? ColorRes.color3879E8
                                : ColorRes.white,
                            child: Text(
                              "For sale",
                              style: overpassRegular(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: (homeControllerTwo.isForSale == false)
                                      ? ColorRes.colorEAECF0
                                      : ColorRes.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 1,
                        color: ColorRes.white,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            if (homeControllerTwo.isForSale == true) {
                              homeControllerTwo.isForSale = false;
                            } else {
                              homeControllerTwo.isForSale = true;
                            }
                            controller.update(["homeTwo"]);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 44,
                            color: (homeControllerTwo.isForSale == false)
                                ? ColorRes.color3879E8
                                : ColorRes.white,
                            child: Text(
                              "To rent",
                              style: overpassRegular(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: (homeControllerTwo.isForSale == true)
                                      ? ColorRes.colorEAECF0
                                      : ColorRes.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///---------------featured properties-----------
                Expanded(
                  child: (homeControllerTwo.isForSale == true)
                      ? SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: Get.height * 0.02),

                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: Get.height * 0.03),
                                    Stack(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.to(PropertyDetailsScreen());
                                          },
                                          child: Container(
                                            height: 160,
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                    AssetRes.homeScreenImg1,
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, right: 10, left: 8),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 22,
                                                    width: 61,
                                                    decoration: BoxDecoration(
                                                      color: ColorRes.skyLight,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      StringRes.forSale,
                                                      style: semiBold(
                                                        color: ColorRes.sky,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Container(
                                                    height: 22,
                                                    width: 87,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          ColorRes.yellowLight,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(Icons.star,
                                                            color: ColorRes
                                                                .colorB54708,
                                                            size: 18),
                                                        const SizedBox(
                                                            width: 3),
                                                        Text(
                                                          StringRes.featured,
                                                          style: semiBold(
                                                            color: ColorRes
                                                                .colorB54708,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Image.asset(
                                                AssetRes.heart,
                                                height: 18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          "Maisonette",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorRes.fontGrey),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          "Naxxar",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.008),
                                    Text(
                                      "2 bedrooms, this house is perfect for a little family ",
                                      style: overpassRegular(
                                          color: ColorRes.hinttext,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(height: Get.height * 0.008),
                                    Row(
                                      children: [
                                        Text(
                                          "530 €",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorRes.fontGrey),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          "2 Bedrooms",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.02),
                                  ],
                                ),
                              ),
                              Container(
                                height: 2,
                                color: ColorRes.colorF2F4F7,
                              ),

                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: Get.height * 0.02),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 160,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  AssetRes.homeScreenImg1,
                                                ),
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, right: 10, left: 8),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 22,
                                                width: 48,
                                                decoration: BoxDecoration(
                                                  color: ColorRes.skyLight,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  StringRes.toLet,
                                                  style: semiBold(
                                                    color: ColorRes.sky,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              const Spacer(),
                                              Image.asset(
                                                AssetRes.heart,
                                                height: 18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          "Maisonette",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorRes.fontGrey),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          "Naxxar",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.008),
                                    Text(
                                      "2 bedrooms, this house is perfect for a little family ",
                                      style: overpassRegular(
                                          color: ColorRes.hinttext,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(height: Get.height * 0.008),
                                    Row(
                                      children: [
                                        Text(
                                          "530 €",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorRes.fontGrey),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          "2 Bedrooms",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.02),
                                  ],
                                ),
                              ),
                              Container(
                                height: 2,
                                color: ColorRes.colorF2F4F7,
                              ),
                              SizedBox(height: Get.height * 0.035),
                              ///---------------All Properties-----------
                              /*Container(
                          height: 16,
                          width: Get.width,
                          color: ColorRes.colorF2F4F7,
                        ),
                        SizedBox(height: Get.height * 0.035),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringRes.allProperties,
                                style: overpassRegular(
                                    fontWeight: FontWeight.w500,
                                    color: ColorRes.fontGrey,
                                    fontSize: 20),
                              ),
                              Text(
                                StringRes.beThe1stToAcquireOurTopProperties,
                                style: overpassRegular(
                                    fontWeight: FontWeight.w500,
                                    color: ColorRes.hinttext,
                                    fontSize: 18),
                              ),
                              SizedBox(height: Get.height * 0.03),
                              Stack(
                                children: [
                                  Container(
                                    height: 160,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              AssetRes.homeScreenImg2,
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 8, right: 10, left: 8),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: Get.height * 0.031,
                                          width: Get.width * 0.24,
                                          decoration: BoxDecoration(
                                            color: ColorRes.yellowLight,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            StringRes.estate,
                                            style: semiBold(
                                              color: ColorRes.yellow,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Image.asset(
                                          AssetRes.heart,
                                          height: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: Get.height * 0.03),
                              Text(
                                "Maisonette . Naxxar",
                                style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              SizedBox(height: Get.height * 0.008),
                              Text(
                                "2 bedrooms, this house is perfect for a little family ",
                                style: overpassRegular(
                                    color: ColorRes.hinttext,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: Get.height * 0.008),
                              Row(
                                children: [
                                  Text(
                                    "530 €",
                                    style: overpassRegular(
                                        color: ColorRes.fontGrey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "2 Bedrooms",
                                    style: overpassRegular(
                                        color: ColorRes.fontGrey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: Get.height * 0.05)],
                          ),
                        ),*/
                            ],
                          ),
                        )
                      : const SizedBox(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
