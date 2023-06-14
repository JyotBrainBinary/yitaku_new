import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colorRes.dart';

class ChatRoomNameController extends GetxController{

  bool chat = false;
  bool drop = false;
  String ageName = "Select...";
  List age = ["15","16","17","18","19","20","21","22","23","24","25"];

  showAgeDialog(context){
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(5)),
          child:Container(
            height: 230,
            width: Get.width,
            child:  Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Enter your Age",style: TextStyle(fontSize: 17),),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                   /*   if(drop == false){
                        drop = true;
                      }else{
                        drop = false;
                      }
                      update(["chat"]);*/
                    },
                    child: Container(
                      height: 40,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.7,color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10,),
                          Text(ageName),
                          const Spacer(),
                          drop  ? const Icon(
                            Icons.keyboard_arrow_up_rounded,
                            color: ColorRes.fontGrey,
                          )  : const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: ColorRes.fontGrey,
                          ),
                          const SizedBox(width: 10,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  drop == true ?
                  Container(
                    height: 100,
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.7,color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(age.length, (index){
                          return Padding(
                            padding: const EdgeInsets.all(12),
                            child: GestureDetector(
                              onTap : () {
                                drop = false;
                                ageName = age[index];
                                update(["chat"]);
                              },
                              child: Text(age[index]),
                            ),
                          );
                        }),
                      ),
                    ),
                  ) : const SizedBox(),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      showLoanOfferDialog(context);
                    },
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Center(child: Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    update(["chat"]);
  }

  showLoanOfferDialog(context){
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(5)),
          actions: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("First Name your age is required."),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: Get.width * 0.55,
                    child: Text(
                      "We need this to show you more accurate home loan offers.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(child: Text("OK",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(height: 25,),
                ],
              ),
            )
          ],
        );
      },
    );
  }

}