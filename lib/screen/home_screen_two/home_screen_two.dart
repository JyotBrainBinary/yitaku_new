import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/chatScreen/chatScreen.dart';
import 'package:yitaku/screen/favorites/favorites_screen.dart';
import 'package:yitaku/screen/home_screen_two/filterScreen/filterController.dart';
import 'package:yitaku/screen/home_screen_two/filterScreen/filterScreen.dart';
import 'package:yitaku/screen/home_screen_two/home_controller_two.dart';
import 'package:yitaku/screen/home_screen_two/screen/propertiesScreen/properties%20for%20you.dart';
import 'package:yitaku/screen/property_detail/property_details_screen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeScreenTwo extends StatelessWidget {
   HomeScreenTwo({Key? key}) : super(key: key);

  FilterController filterController = Get.put(FilterController());
    HomeControllerTwo homeControllerTwo = Get.put(HomeControllerTwo());

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
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
                GestureDetector(
                  onTap: () {
                    Get.to(()=>PropertiesScreen());
                  },
                  child: Image.asset(
                    AssetRes.jalebi,
                    height: 24,
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>FavoritesScreen());
                  },
                  child: Image.asset(
                    AssetRes.hart,
                    height: 19,
                  ),
                ),
                const SizedBox(width: 12),
                InkWell(
                  onTap: () {
                   // homeControllerTwo.accountRequiredDialog();
                    Get.to(()=>ChatScreen());
                  },
                  child: Image.asset(
                    AssetRes.msg,
                    height: 19,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
        body: GetBuilder<HomeControllerTwo>(
          id: "homeTwo",
          builder: (controller) {
            return  Column(
              children: [
                // SizedBox(height: Get.height * 0.10),

                ///---------Filter (3)----------
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Text(
                        "Filters",
                        style: overpassRegular(
                          color:  ColorRes.color3879E8,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      const Spacer(),
                      const Spacer(),
                      const Spacer(),
                      const Spacer(),
                      Column(
                        children: [
                          IconButton(onPressed: () {
                            filterController.property = true;
                            filterController.selectLocation = "Select location/s";
                           filterController.locationCheck = List.generate(11, (index) => false);
                            filterController.range = 10;
                            filterController.clickTapColor1 = 0;
                            filterController.clickTapColor2 = 0;
                            homeControllerTwo.update(["check"]);
                          }, icon: Icon(Icons.refresh,color: ColorRes.buttonColor,)),
                          Text(
                            "Reset Filters",
                            style: overpassRegular(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                            if (homeControllerTwo.isOpenList == false) {
                            homeControllerTwo.isOpenList = true;
                            controller.update(["homeTwo"]);
                          } else {
                            homeControllerTwo.isOpenList = false;
                            controller.update(["homeTwo"]);
                          }
                         // Get.to(()=>FilterScreen());
                          if(filterController.filter == false){
                            filterController.filter = true;
                            homeControllerTwo.update(["homeTwo"]);
                          }else{
                            filterController.filter = false;
                            homeControllerTwo.update(["homeTwo"]);
                          }
                        },
                        child: Image.asset(
                          AssetRes.downList,
                          height: 12,
                          color: ColorRes.buttonColor,
                        ),
                      ),
                    ],
                  ),
                ),

                   ///------ tab bar --------
                   filterController.filter == false ?  Container(
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
                   ) : SizedBox(),

                   ///---------------featured properties-----------
                filterController.filter == false ?   Expanded(
                     child: (homeControllerTwo.isForSale == true)
                         ?  ListView.builder(
                       itemCount: homeControllerTwo.listProperties?.length ?? 0,
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
                                           image: AssetImage(
                                             "assets/images/place_hold.jpg",
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
                                           "To rent",
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
                                 homeControllerTwo.listProperties![index].propertyDescription  =="null"? const Text(""):  Text(
                                   "${homeControllerTwo.listProperties![index].propertyType}",

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
                                 homeControllerTwo.listProperties![index].propertyDescription  =="null"? const Text(""):  Text(
                                   "${homeControllerTwo.listProperties![index].propertyLocation}",
                                   style: overpassRegular(
                                       color: ColorRes.fontGrey,
                                       fontWeight: FontWeight.w600),
                                 ),
                               ],
                             ),
                             SizedBox(height: Get.height * 0.008),
                             homeControllerTwo.listProperties![index].propertyDescription  =="null"? const Text(""):  Text(
                               "${homeControllerTwo.listProperties![index].propertyDescription}",
                               style: overpassRegular(
                                   color: ColorRes.hinttext,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w300),
                             ),
                             SizedBox(height: Get.height * 0.008),
                             Row(
                               children: [
                                 homeControllerTwo.listProperties![index].propertyDescription  =="null"? const Text(""): Text(
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
                                 homeControllerTwo.listProperties![index].noOfBedrooms  == "null" ? const Text(""):  Text(
                                   "${homeControllerTwo.listProperties![index].noOfBedrooms}",
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

                     )
                         : const SizedBox(),
                   ) : FilterScreen(),
                 ],
            );
          },
        ),
      ),
    );
  }
}
