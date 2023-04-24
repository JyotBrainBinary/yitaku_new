import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.03),
            SizedBox(height: Get.height * 0.03),

            ///---------------appbar----------------
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AssetRes.backArrow,
                    height: 20,
                  ),
                  Text(
                    StringRes.home,
                    style: overpassRegular(
                        fontWeight: FontWeight.w600,
                        color: ColorRes.fontGrey,
                        fontSize: 18),
                  ),
                  Image.asset(
                    AssetRes.menu,
                    height: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Divider(
              color: ColorRes.fontGrey.withOpacity(0.2),
            ),

            ///---------------featured properties-----------
            Expanded(

              child: SingleChildScrollView(

                child: Column(
                  children: [
                    SizedBox(height: Get.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringRes.featuredProperties,
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

                          /// todo1: top right corner  put like icon and
                          /// todo2: top left corner  put category
                          Stack(

                            children: [
                              Container(
                                height: 160,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          AssetRes.homeScreenImg1,
                                        ),
                                        fit: BoxFit.cover)),

                              ),

                              Padding(
                                padding:  EdgeInsets.only(top:  8,right: 8,left: 8),
                                child: Row(
                                  children: [

                                    Container(
                                      height: Get.height * 0.031,
                                      width: Get.width * 0.144,
                                      decoration: BoxDecoration(
                                        color: ColorRes.skyLight,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(StringRes.owner,style: semiBold(
                                        color: ColorRes.sky,
                                        fontSize: 12,fontWeight: FontWeight.w500,

                                      ),),
                                    ),
                             Spacer(),
                             Image.asset(AssetRes.heart,height: 15,width: 17,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height * 0.02),
                          Text(
                            "Maisonette   Naxxar",
                            style: overpassRegular(
                                color: ColorRes.fontGrey,
                                fontWeight: FontWeight.w600,fontSize: 16),
                          ),
                          Text(
                            "2 bedrooms, this house is perfect for a little family ",
                            style: overpassRegular(
                                color: ColorRes.hinttext,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          Row(
                            children: [
                              Text(
                                "530 €",
                                style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "2 Bedrooms",
                                style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height * 0.035),
                          Stack(

                            children: [
                              Container(
                                height: 160,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          AssetRes.homeScreenImg3,
                                        ),
                                        fit: BoxFit.cover)),
                              ),

                              Padding(
                                padding:  EdgeInsets.only(top:  8,right: 8,left: 8),
                                child: Row(
                                  children: [

                                    Container(

                                      height: Get.height * 0.031,
                                      width: Get.width * 0.24,
                                      decoration: BoxDecoration(
                                        color: ColorRes.yellowLight,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(StringRes.estate,style: semiBold(
                                        color: ColorRes.yellow,
                                        fontSize: 12,fontWeight: FontWeight.w500,

                                      ),),
                                    ),
                                    Spacer(),
                                    Image.asset(AssetRes.heart,height: 15,width: 17,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height * 0.02),
                          Text(
                            "Auto-layout explained",
                            style: overpassRegular(
                                color: ColorRes.fontGrey,
                                fontWeight: FontWeight.w600,fontSize: 16),
                          ),
                          Text(
                            "Auto layout is a constraint-based layout system to create an adaptive UI.",
                            style: overpassRegular(
                                color: ColorRes.hinttext,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          Row(
                            children: [
                              Text(
                                "199 000 €",
                                style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontWeight: FontWeight.w600,fontSize: 14),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "2 Bedrooms",
                                style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontWeight: FontWeight.w600,fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height * 0.035),
                        ],
                      ),
                    ),

                    ///---------------All Properties-----------

                    Container(
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
                                padding:  EdgeInsets.only(top:  8,right: 8,left: 8),
                                child: Row(
                                  children: [

                                    Container(

                                      height: Get.height * 0.031,
                                      width: Get.width * 0.24,
                                      decoration: BoxDecoration(
                                        color: ColorRes.yellowLight,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(StringRes.estate,style: semiBold(
                                        color: ColorRes.yellow,
                                        fontSize: 12,fontWeight: FontWeight.w500,

                                      ),),
                                    ),
                                    Spacer(),
                                    Image.asset(AssetRes.heart,height: 15,width: 17,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height * 0.02),
                          Text(
                            "Maisonette   Naxxar",
                            style: overpassRegular(
                                color: ColorRes.fontGrey,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "2 bedrooms, this house is perfect for a little family ",
                            style: overpassRegular(
                                color: ColorRes.hinttext,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          Row(
                            children: [
                              Text(
                                "530 €",
                                style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "2 Bedrooms",
                                style: overpassRegular(
                                    color: ColorRes.fontGrey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
