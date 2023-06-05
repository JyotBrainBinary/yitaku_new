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
      body: SafeArea(
        child: Column(
          children: [
            ///-------App bar------
            Container(
              color: ColorRes.color3879E8,
              width: Get.width,
              height: 55,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: ColorRes.white,
                        size: 25,
                      ),
                    ),
                    Text(
                      StringRes.propertyDetails,
                      style: overpassRegular(fontSize: 20),
                    ),
                    Image.asset(
                      AssetRes.hart,
                      height: 19,
                    ),
                  ],
                ),
              ),
            ),

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

                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 22),
                      child: apartment(),
                    ),
                    seller(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget apartment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StringRes.Apartment,
              style: overpassRegular(
                  color: ColorRes.hinttext,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            Container(
              height: 20,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorRes.skyLight),
              child: Text(
                StringRes.forSale,
                style: overpassRegular(
                    color: ColorRes.color3879E8,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          "€ 240,000",
          style: overpassRegular(color: ColorRes.hinttext, fontSize: 22),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const Icon(Icons.location_on_sharp, size: 20, color: Colors.grey),
            Text(
              "Qawra",
              style: overpassRegular(color: Colors.grey),
            )
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 2,
          width: Get.width,
          color: ColorRes.colorF2F4F7,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AssetRes.bedroom,
                      height: 25,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 8),
                    Text("2",
                        style: overpassRegular(
                            color: ColorRes.hinttext, fontSize: 16)),
                  ],
                ),
                Text(StringRes.bedrooms,
                    style: overpassRegular(color: Colors.grey, fontSize: 16)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AssetRes.bathroom,
                      height: 25,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "2",
                      style: overpassRegular(
                          color: ColorRes.hinttext, fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  StringRes.bathroom,
                  style: overpassRegular(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AssetRes.zoomIn,
                      height: 25,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "93.7",
                      style: overpassRegular(
                          color: ColorRes.hinttext, fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  "m2",
                  style: overpassRegular(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Container(
          height: 2,
          width: Get.width,
          color: ColorRes.colorF2F4F7,
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(
              StringRes.withTerrace,
              style: overpassRegular(color: ColorRes.hinttext, fontSize: 16),
            )
          ],
        ),
        const SizedBox(height: 15),
        Container(
          height: 2,
          width: Get.width,
          color: ColorRes.colorF2F4F7,
        ),
        const SizedBox(height: 15),
        ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu finibus ante. Cras mattis urna accumsan iaculis vestibulum. Praesent et orci ac leo ultrices mollis. Ut condimentum.',
          style: overpassRegular(color: Colors.grey),
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Read less',
          moreStyle: overpassRegular(fontSize: 12, color: ColorRes.color3879E8),
          lessStyle: overpassRegular(fontSize: 12, color: ColorRes.color3879E8),
        ),
        const SizedBox(height: 15),
        Container(
          height: 2,
          width: Get.width,
          color: ColorRes.colorF2F4F7,
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget seller() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringRes.seller,
                style: overpassRegular(
                    color: ColorRes.fontGrey,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: const DecorationImage(
                          image: AssetImage(AssetRes.placeHolderPerson),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "Rodianne - Owner",
                    style: overpassRegular(color: ColorRes.hinttext),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: Get.width * 0.3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorRes.color3879E8,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                            color: Colors.grey.withOpacity(0.5)),
                      ],
                    ),
                    child: Text(
                      StringRes.call,
                      style: overpassRegular(color: ColorRes.white),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: Get.width * 0.53,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorRes.color3879E8,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                            color: Colors.grey.withOpacity(0.5)),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AssetRes.msg, height: 18),
                        const SizedBox(width: 20),
                        Text(
                          StringRes.contactSeller,
                          style: overpassRegular(color: ColorRes.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Text(StringRes.thisPropertyCanBeYoursFor,
                  style: overpassRegular(color: ColorRes.hinttext)),
              Text("€ 773.00 ${StringRes.perMonth}",
                  style: overpassRegular(color: ColorRes.hinttext)),
              const SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringRes.loanAmount,
                        style: overpassRegular(
                            fontSize: 8, color: ColorRes.hinttext),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "€ 216,000",
                        style: overpassRegular(color: ColorRes.hinttext),
                      ),
                    ],
                  ),
                  SizedBox(width: Get.width * 0.25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${StringRes.deposit} (10%)",
                        style: overpassRegular(
                            fontSize: 8, color: ColorRes.hinttext),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "€ 24,000",
                        style: overpassRegular(color: ColorRes.hinttext),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia",
                style: overpassRegular(fontSize: 8, color: Colors.grey),
              ),
              Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia",
                style: overpassRegular(fontSize: 8, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 42,
                  width: Get.width * 0.7,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorRes.colorD0D5DD,
                  ),
                  child: Text(
                    StringRes.howMuchCanIBorrow,
                    style: overpassRegular(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 42,
                  width: Get.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorRes.colorD0D5DD,
                  ),
                  child: Text(
                    StringRes.compareHomeLoanOffers,
                    style: overpassRegular(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              Text(
                StringRes.otherPropertiesFromThisSeller,
                style: overpassRegular(color: ColorRes.hinttext),
              ),
              SizedBox(height: Get.height * 0.03),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(8, (index) {
              return Row(
                children: [
                  const SizedBox(width: 25),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AssetRes.propertyDetail3),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Maisonette...",
                        style: overpassRegular(
                            color: ColorRes.hinttext,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              );
            }),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
