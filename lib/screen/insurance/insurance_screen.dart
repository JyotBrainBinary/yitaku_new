import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/insurance/insurance_controller.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class InsuranceScreen extends StatelessWidget {
   InsuranceScreen({Key? key}) : super(key: key);

   InsuranceController controller = Get.put(InsuranceController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,title: Text("Insurance")),
        body: SingleChildScrollView(
          child: GetBuilder<InsuranceController>(
            id: "insurance",
            builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage(AssetRes.insuranceee))
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                          width: Get.width * 0.85,
                          child: Text("  We're working hard to give you the best possible experience for all your insurance needs...",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15),)),
                      SizedBox(height: 30,),
                      SizedBox(
                          width: Get.width * 0.85,
                          child: Text(
                            "In the mean time,please give us your feedback on a few matters",
                            textAlign: TextAlign.center,
                            style: overpassRegular(
                            color:  ColorRes.color3879E8,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                      ),
                      const SizedBox(height: 20,),
                      Icon(Icons.arrow_downward_sharp,size: 40,color: Colors.grey,),
                      const SizedBox(height: 15,),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("What kind of insurance policy would you be intersted in?",style: TextStyle(color: Colors.grey,fontSize: 12.8),),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: () {
                          if (controller.isDrop == false) {
                            controller.isDrop = true;
                          } else {
                            controller.isDrop = false;
                          }
                          controller.update(["insurance"]);
                        },
                        child: Container(
                          height: 44,
                          width: Get.width,
                          padding:
                          const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Text(
                                  controller.selectItem,
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Spacer(),
                              (controller.isDrop)
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
                      (controller.isDrop) ?
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                          children:List.generate(controller.item1.length, (index){
                            return InkWell(
                                onTap: () {
                                  controller.isDrop = false;
                                  controller.selectItem = controller.item1[index];
                                  controller.update(["insurance"]);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top:10,left: 10,right: 10),
                                  height: 30,
                                  child: Align(alignment: Alignment.topLeft,
                                      child: Text(controller.item1[index],style: TextStyle(color: Colors.grey),)),
                                )
                            );
                          }),
                        ),
                      ) : const SizedBox(),
                      SizedBox(height: 10,),
                      Text("How would you like Yitaku to assist you in buying an insurance policy?",style: TextStyle(color: Colors.grey,fontSize: 12.8),),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: () {
                          if (controller.isDrop2 == false) {
                            controller.isDrop2 = true;
                          } else {
                            controller.isDrop2 = false;
                          }
                          controller.update(["insurance"]);
                        },
                        child: Container(
                          height: 44,
                          width: Get.width,
                          padding:
                          const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Text(
                                  controller.selectItem2,
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Spacer(),
                              (controller.isDrop2)
                                  ? const Icon(
                                Icons.keyboard_arrow_up_rounded,
                                color: ColorRes.fontGrey,
                              )
                                  : const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: ColorRes.fontGrey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      (controller.isDrop2) ?
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                          children:List.generate(controller.item2.length, (index){
                            return InkWell(
                                onTap: () {
                                  controller.isDrop2 = false;
                                  controller.selectItem2 = controller.item2[index];
                                  controller.update(["insurance"]);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top:10,left: 10,right: 10),
                                  height: 30,
                                  child: Align(alignment: Alignment.topLeft,
                                      child: Text(controller.item2[index],style: TextStyle(color: Colors.grey),)),
                                ),
                            );
                          }),
                        ),
                      ) : const SizedBox(),
                      SizedBox(height: 30,),
                      Container(
                        height: 40,
                        width: Get.width,
                        decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(50))),
                        child: Center(child: Text("Send FeedBack",style: TextStyle(color: Colors.white),),),
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                )
              ],
            );
          },)
        ),
      ),
    );
  }
}
