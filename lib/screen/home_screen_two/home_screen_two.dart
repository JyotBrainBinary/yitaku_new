import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/home_screen_two/home_controller_two.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /// ----- status bar color -----
    /*SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: ColorRes.color3879E8,
          statusBarIconBrightness: Brightness.dark
      ),
    );*/
  }

  @override
  Widget build(BuildContext context) {
    final HomeControllerTwo homeControllerTwo = Get.put(HomeControllerTwo());
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<HomeControllerTwo>(
          id: "homeTwo",
          builder: (controller) {
            return Column(
              children: [
                // SizedBox(height: Get.height * 0.10),

                ///---------------appbar----------------
                Container(
                  color: ColorRes.color3879E8,
                  width: Get.width,
                  height: Get.height * 0.10,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: ColorRes.white,
                        ),
                        Image.asset(
                          AssetRes.whiteLogo,
                          height: 19,
                        ),
                        SizedBox(width: Get.width * 0.17),
                        Image.asset(
                          AssetRes.jalebi,
                          height: 24,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: ColorRes.white,
                          size: 24,
                        ),
                        Icon(
                          Icons.messenger_outline_outlined,
                          color: ColorRes.white,
                          size: 24,
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
                      Spacer(),
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
                        offset: Offset(0, 8),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            if(homeControllerTwo.isForSale == false){
                              homeControllerTwo.isForSale = true;
                            } else{
                              homeControllerTwo.isForSale = false;
                            }
                            controller.update(["homeTwo"]);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 44,
                            color: (homeControllerTwo.isForSale == true)? ColorRes.color3879E8 : ColorRes.white,
                            child: Text(
                              "For sale",
                              style: overpassRegular(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color:  (homeControllerTwo.isForSale == false)?ColorRes.colorEAECF0: ColorRes.white),
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
                          onTap: (){
                           if(homeControllerTwo.isRent == true){
                             homeControllerTwo.isRent = false;
                           }else{
                             homeControllerTwo.isRent = true;
                           }
                            controller.update(["homeTwo"]);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 44,
                            color: (homeControllerTwo.isRent == true)? ColorRes.color3879E8 : ColorRes.white,
                            child: Text(
                              "To rent",
                              style: overpassRegular(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: (homeControllerTwo.isRent == false)?ColorRes.colorEAECF0: ColorRes.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),




                ///---------------featured properties-----------
               Expanded(
                  child: ( homeControllerTwo.isForSale == true )
                      ? SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: Get.height * 0.02),

                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            children: [
                              SizedBox(height: Get.height * 0.03),
                              Stack(
                                children: [
                                  Container(
                                    height: 160,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            AssetRes.homeScreenImg1,
                                          ),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8, right: 10, left: 8),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 22,
                                              width: 61,
                                              decoration: BoxDecoration(
                                                color: ColorRes.skyLight,
                                                borderRadius:
                                                BorderRadius.circular(16),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                StringRes.forSale,
                                                style: semiBold(
                                                  color: ColorRes.sky,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Container(
                                              height: 22,
                                              width: 87,
                                              decoration: BoxDecoration(
                                                color: ColorRes.yellowLight,
                                                borderRadius:
                                                BorderRadius.circular(16),
                                              ),
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.star, color: ColorRes.colorB54708, size: 18),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    StringRes.featured,
                                                    style: semiBold(
                                                      color: ColorRes.colorB54708,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                              Row(
                                children: [
                                  Text(
                                    "Maisonette",
                                    style: overpassRegular(
                                        color: ColorRes.fontGrey,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorRes.fontGrey
                                    ),
                                  ),
                                  SizedBox(width: 8),
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
                                  SizedBox(width: 8),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorRes.fontGrey
                                    ),
                                  ),
                                  SizedBox(width: 8),
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
                          padding: const EdgeInsets.only(left: 16, right: 16),
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
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            AssetRes.homeScreenImg1,
                                          ),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8, right: 10, left: 8),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 22,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            color: ColorRes.skyLight,
                                            borderRadius: BorderRadius.circular(16),
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
                              Row(
                                children: [
                                  Text(
                                    "Maisonette",
                                    style: overpassRegular(
                                        color: ColorRes.fontGrey,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorRes.fontGrey
                                    ),
                                  ),
                                  SizedBox(width: 8),
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
                                  SizedBox(width: 8),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorRes.fontGrey
                                    ),
                                  ),
                                  SizedBox(width: 8),
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
                              SizedBox(height: Get.height * 0.05),
                            ],
                          ),
                        ),*/
                      ],
                    ),
                  )
                      : SizedBox(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
