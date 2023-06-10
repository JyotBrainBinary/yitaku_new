import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yitaku/screen/home_screen_two/screen/propertyAlertScreen/property_alert_screen.dart';
import 'package:yitaku/utils/colorRes.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Properties for you"),
      ),
      body: Column(
        children: [
          SizedBox(height: 350,),
          Center(
            child: GestureDetector(
              onTap: () {
                Get.to(()=>PropertyAlertScreen());
              },
              child: Container(
                height: 40,
                width: Get.width * 0.70,
                decoration: const BoxDecoration(
                    color: ColorRes.color3879E8,
                    borderRadius:
                    BorderRadius.all(Radius.circular(5))),
                child:  Center(
                  child:Row(
                    children: [
                      Spacer(),
                      Icon(Icons.add_alert,color: Colors.white,),
                      Spacer(),
                      Text(
                        "SET UP PROPERTY ALERTS",
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                    ],
                  )
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          SizedBox(
            width:  Get.width * 0.90,
            child: Text(
                "Hey Hello! To view suggested properties and receive instant notifiactions you have to set up property alerts",
              textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
