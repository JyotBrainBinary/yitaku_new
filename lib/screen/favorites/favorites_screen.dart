import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/chatScreen/chatScreen.dart';
import 'package:yitaku/screen/favorites/favorites_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class FavoritesScreen extends StatelessWidget {
   FavoritesScreen({Key? key}) : super(key: key);

   FavoritesController controller = Get.put(FavoritesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorRes.color3879E8,
        title: Text("Favourites"),
      ),
      body:Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text(
              StringRes.firstName,
              style: overpassRegular(
                color:  ColorRes.color3879E8,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              StringRes.favouritesProperty,
              style: overpassRegular(
                color: Color(0xFF757575),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height:15,),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height * 0.02),
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                           Get.to(ChatScreen());
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
                                  "Name",
                                  style: semiBold(
                                    color: ColorRes.sky,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  controller.showDialogBox(context);
                                },
                                child: SizedBox(
                                  height: 18,
                                    child: Icon(Icons.delete_forever,)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Text("Name - Localities",
                        style: overpassRegular(
                          color: Color(0xFF757575),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                    SizedBox(height: Get.height * 0.008),
                    Text("0 - Name",
                      style:overpassRegular(
                        color: Color(0xFF757575),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: Get.height * 0.02),
                  ],
                ),
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
