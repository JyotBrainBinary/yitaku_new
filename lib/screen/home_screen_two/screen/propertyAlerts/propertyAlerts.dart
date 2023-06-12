import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/home_screen_two/screen/EditPropertyAlerts/editPropertyAlert_Screen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class PropertyAlertScreen extends StatelessWidget {
  const PropertyAlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Property Alerts"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Text(
                StringRes.propertyAlerts,
                style: bold(
                  color: Color(0xFF4285f4),
                  fontSize: 16,
                ),
            ),
            Text(
                StringRes.setProperty,
              style: medium(
                color: Color(0xFF757575),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20,),
            Text(
                StringRes.lookingProperty,
              style: medium(
                color: Color(0xFF4285f4),
                fontSize: 16,
              ),
            ),
            Text(
                StringRes.toBuy,
              style: medium(
                color: Color(0xFF757575),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25,),
            Text(
                StringRes.propertyLooking,
              style: medium(
                color: Color(0xFF4285f4),
                fontSize: 16,
              ),
            ),
            Text(
                StringRes.farmhouse,
              style: medium(
                color: Color(0xFF757575),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25,),
            Text(
                StringRes.localities,
              style: medium(
                color: Color(0xFF4285f4),
                fontSize: 16,
              ),
            ),
            Text(
                "Mellieha - Swieqi - Siggiewi",
              style: medium(
                color: Color(0xFF757575),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25,),
            Text(
                StringRes.bedroomss,
              style: medium(
                color: Color(0xFF4285f4),
                fontSize: 16,
              ),
            ),
            Text(
                "2 - 3 Bedrooms",
              style: medium(
                color: Color(0xFF757575),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25,),
            Text(
                StringRes.budget,
              style: medium(
                color: Color(0xFF4285f4),
                fontSize: 16,
              ),
            ),
            Text(
              "250,000 - 450,000",
              style: medium(
                color: Color(0xFF757575),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 45,),
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.to(()=>EditPropertyAlertScreen());
                },
                child: Container(
                  height: 40,
                  width: Get.width * 0.60,
                  decoration: const BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(8))),
                  child:  Center(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.edit,color: Colors.white,),
                      SizedBox(width: 20,),
                      Text(StringRes.edit,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                    ],
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
