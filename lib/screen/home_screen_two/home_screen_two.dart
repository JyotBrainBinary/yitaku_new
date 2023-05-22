import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yitaku/api_calling/properties_api.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/home_screen_two/home_controller_two.dart';
import 'package:yitaku/screen/property_detail/property_details_screen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeScreenTwo extends StatefulWidget {
  HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  @override
  Widget build(BuildContext context) {
    HomeControllerTwo homeControllerTwo = Get.put(HomeControllerTwo());
    print(homeControllerTwo.listProperties);
    return SafeArea(
      child: Scaffold(
        body:
            // homeControllerTwo.isLoading.value ==true ? const Center(child: CircularProgressIndicator()):
            GetBuilder<HomeControllerTwo>(
          id: "homeTwo",
          builder: (controller) {
            return Stack(
              children: [
                Column(
                  children: [
                    // SizedBox(height: Get.height * 0.10),
                    ///---------------appbar----------------
                    Container(
                      color: ColorRes.color3879E8,
                      width: Get.width,
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          children: [
                            Image.asset(
                              AssetRes.menu,
                              height: 14,
                              color: ColorRes.white,
                            ),
                            const SizedBox(width: 20),
                            Image.asset(
                              AssetRes.whiteLogo,
                              height: 19,
                            ),
                            const Spacer(),
                            Image.asset(
                              AssetRes.jalebi,
                              height: 24,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              AssetRes.hart,
                              height: 19,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              AssetRes.msg,
                              height: 19,
                            ),
                          ],
                        ),
                      ),
                    ),

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
                          GestureDetector(
                            onTap: () {
                              /*if (homeControllerTwo.isOpenList == false) {
                            homeControllerTwo.isOpenList = true;
                            controller.update(["homeTwo"]);
                          } else {
                            homeControllerTwo.isOpenList = false;
                            controller.update(["homeTwo"]);
                          }*/
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
                                      color:
                                          (homeControllerTwo.isForSale == false)
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
                                if (homeControllerTwo.isRent == true) {
                                  homeControllerTwo.isRent = false;
                                } else {
                                  homeControllerTwo.isRent = true;
                                }
                                controller.update(["homeTwo"]);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 44,
                                color: (homeControllerTwo.isRent == true)
                                    ? ColorRes.color3879E8
                                    : ColorRes.white,
                                child: Text(
                                  "To rent",
                                  style: overpassRegular(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: (homeControllerTwo.isRent == false)
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
                      child:
                      // (homeControllerTwo.isForSale == true)?
                           ListView.builder(
                              itemBuilder: (context, index) => Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: Get.height * 0.02),
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
                                                image:  DecorationImage(
                                                  image: NetworkImage(
                                                    "${homeControllerTwo.listProperties![index].image![0].url}",
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
                                                  "${homeControllerTwo.listProperties![index].salesLetting}",
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
                                          "${homeControllerTwo.listProperties![index].propertyType}",
                                          // "${homeControllerTwo.propertiesModel.propertyType}",
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
                                          "${homeControllerTwo.listProperties![index].locality}",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.008),
                                    Text(
                                      "${homeControllerTwo.listProperties![index].propertyDescription}",
                                      style: overpassRegular(
                                          color: ColorRes.hinttext,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(height: Get.height * 0.008),
                                    Row(
                                      children: [
                                        Text(
                                          "${homeControllerTwo.listProperties![index].price}",
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
                                          "${homeControllerTwo.listProperties![index].numberOfBedrooms}",
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.02),
                                    Container(
                                      height: 2,
                                      color: ColorRes.colorF2F4F7,
                                    ),
                                    SizedBox(height: Get.height * 0.035),
                                  ],
                                ),
                              ),
                              itemCount:
                                  homeControllerTwo.listProperties!.length,
                            )
                          // : const SizedBox(),
                    ),
                  ],
                ),
                homeControllerTwo.isLoading == true ? const Center(child: CircularProgressIndicator()): SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
