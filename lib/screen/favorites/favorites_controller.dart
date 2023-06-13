import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesController extends GetxController{

  showDialogBox(context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              actions: [
                SizedBox(
                  height: 200,
                  width: Get.width,
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      SizedBox(width: Get.width * 0.60,child: Text("Het First Name, are you sure you want to remove this property from your favourites?",textAlign:TextAlign.center,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 14),)),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                        Container(
                          height: 50,
                          width: Get.width * 0.30,
                          decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Center(child: Text("YES",style: TextStyle(color: Colors.white),)),
                        ),
                          Spacer(),
                          Container(
                            height: 50,
                            width: Get.width * 0.30,
                            decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(8))),
                            child: Center(child: Text("NO",style: TextStyle(color: Colors.white),)),
                          ),
                          Spacer(),
                      ],
                      ),
                      SizedBox(height: 40,),
                    ],
                  ),
                )
              ],
          );
        },
    );
  }

}