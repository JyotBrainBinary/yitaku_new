import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/logo.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/typeSeller_screen/type_seller_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class TypeSellerScreen extends StatelessWidget {
  TypeSellerScreen({Key? key}) : super(key: key);

  final TypeSellerController typeSellerController =
      Get.put(TypeSellerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: GetBuilder<TypeSellerController>(
                id: "drop",
                builder: (controller) {
                  return SingleChildScrollView(
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
                          StringRes.whatTypeOfSellerAreYou,
                          style: overpassRegular(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: ColorRes.fontGrey),
                        ),

                        SizedBox(height: Get.height * 0.05),

                        ///dropdown
                        GestureDetector(
                          onTap: () {
                            if (typeSellerController.isDrop == false) {
                              typeSellerController.isDrop = true;
                            } else {
                              typeSellerController.isDrop = false;
                            }
                            typeSellerController.update(["drop"]);
                          },
                          child: Container(
                            height: 44,
                            width: Get.width,
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: ColorRes.textfieldBorder)),
                            child: Row(
                              children: [
                                Text(
                                  typeSellerController.sellerTypeString,
                                  style:
                                      (typeSellerController.sellerTypeString ==
                                              StringRes.selectASellerType)
                                          ? overpassRegular(
                                              color: ColorRes.hinttext,
                                              fontSize: 16)
                                          : regular(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: ColorRes.fontGrey),
                                ),
                                const Spacer(),
                                (typeSellerController.isDrop)
                                    ? const Icon(
                                        Icons.keyboard_arrow_up_rounded,
                                        color: ColorRes.fontGrey,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: ColorRes.fontGrey,
                                      )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        (typeSellerController.isDrop)
                            ? Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  //border: Border.all(color: ColorRes.colorF2F4F7, width: 1.5),
                                  color: ColorRes.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorRes.textfieldBorder
                                          .withOpacity(0.5),
                                      blurRadius: 10,
                                      spreadRadius: 0.5,
                                      offset: const Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: List.generate(
                                    typeSellerController.sellerType.length,
                                    (index) => Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            typeSellerController
                                                    .sellerTypeString =
                                                typeSellerController
                                                    .sellerType[index];
                                            typeSellerController.isDrop = false;
                                            typeSellerController
                                                .update(["drop"]);
                                          },
                                          child: Container(
                                            height: 44,
                                            decoration: BoxDecoration(
                                              color: (typeSellerController
                                                          .sellerTypeString ==
                                                      typeSellerController
                                                          .sellerType[index])
                                                  ? ColorRes.colorF2F4F7
                                                  : Colors.transparent,
                                              borderRadius: (index == 0)
                                                  ? const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(10),
                                                      topLeft:
                                                          Radius.circular(10))
                                                  : (index == 3)
                                                      ? const BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10))
                                                      : BorderRadius.circular(
                                                          0),
                                            ),
                                            padding: const EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  typeSellerController
                                                      .sellerType[index],
                                                  style: regular(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: ColorRes.fontGrey),
                                                ),
                                                Spacer(),
                                                (typeSellerController
                                                            .sellerTypeString ==
                                                        typeSellerController
                                                            .sellerType[index])
                                                    ? Image.asset(
                                                        AssetRes.check,
                                                        height: 10)
                                                    : const SizedBox(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(),

                        SizedBox(height: Get.height * 0.05),

                        ///last
                        Container(
                          width: Get.width,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 25, bottom: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: ColorRes.appColor)),
                          child: Row(
                            children: [
                              Image.asset(AssetRes.plusRound, height: 40),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    StringRes.listPropertyNow,
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
                                        StringRes.listPropertyNowDetail,
                                        style: overpassRegular(
                                            color: ColorRes.appColor,
                                            fontSize: 14),
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
                              Image.asset(AssetRes.search, height: 40),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    StringRes.browseListings,
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
                                        StringRes.browseListingsDetail,
                                        style: overpassRegular(
                                            color: ColorRes.appColor,
                                            fontSize: 14),
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
                  );
                })),
      ),
    );
  }
}
