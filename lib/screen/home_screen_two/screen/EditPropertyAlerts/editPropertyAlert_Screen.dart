import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/dashbord/dashboard_screen.dart';
import 'package:yitaku/screen/home_screen_two/screen/EditPropertyAlerts/editPeopertyAlertScreen_Controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class EditPropertyAlertScreen extends StatelessWidget {
  EditPropertyAlertScreen({Key? key}) : super(key: key);

  EditPropertyAlertController controller = Get.put(EditPropertyAlertController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:  true,
        backgroundColor: ColorRes.color3879E8,
        title: Text("Edit Property Alerts"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: GetBuilder<EditPropertyAlertController>(
            id: "property",
            builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25,),
                  Text(
                    StringRes.heyHello,
                    style: overpassRegular(
                      color:  ColorRes.color3879E8,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 2,),
                  Text(
                    StringRes.LetssetupyourpropertyAlerts,
                    style: overpassRegular(
                      color:   const Color(0xFF64748B),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Text(
                    StringRes.WouldYou,
                    style: overpassRegular(
                      color:  ColorRes.color3879E8,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.checkBox(false);
                        },
                        child: Container(
                          height: 35,
                          width: Get.width * 0.30,
                          decoration: BoxDecoration(
                              color: controller.rent == false ?  ColorRes.color3879E8 : Colors.grey.withOpacity(0.70),
                              borderRadius: const BorderRadius.all(Radius.circular(8))
                          ),
                          child:  Center(
                            child: Text(StringRes.bUY,style:bold(color: Colors.white)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      GestureDetector(
                        onTap: () {
                          controller.checkBox(true);
                        },
                        child: Container(
                          height: 35,
                          width: Get.width * 0.30,
                          decoration: BoxDecoration(
                              color: controller.rent == false ? Colors.grey.withOpacity(0.70) : ColorRes.color3879E8,
                              borderRadius: const BorderRadius.all(Radius.circular(8))
                          ),
                          child:  Center(
                            child: Text(StringRes.bUY,style:bold(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  Text(
                    StringRes.whatkind,
                    style: overpassRegular(
                      color:  ColorRes.color3879E8,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 2,),
                  Text(
                    StringRes.selectUp,
                    style: overpassRegular(
                      color:   const Color(0xFF64748B),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Wrap(
                    children: List.generate(
                      controller.propertyName.length,
                          (index) {
                        return GestureDetector(
                          onTap: () {
                            controller.looking[index] = !controller.looking[index];
                            controller.update(['property']);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 10),
                            margin: const EdgeInsets.only(right: 10, bottom: 10),
                            decoration: BoxDecoration(
                              color: controller.looking[index] ? ColorRes.color3879E8 : Colors.grey.withOpacity(0.70),
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                              /*color:
                                      propertyController.clickTapColor2 == index
                                          ? ColorRes.color3879E8
                                          : Colors.transparent,*/
                            ),
                            child: Text(
                              controller.propertyName[index],
                                style:bold(color: Colors.white)
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Text(
                    StringRes.whichLocally,
                    style: overpassRegular(
                      color:  ColorRes.color3879E8,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 2,),
                  Text(
                    StringRes.selectLocalities,
                    style: overpassRegular(
                      color:   const Color(0xFF64748B),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      if (controller.isDrop == false) {
                        controller.isDrop = true;
                      } else {
                        controller.isDrop = false;
                      }
                      controller.update(["property"]);
                    },
                    child: Container(
                      height: 35,
                      width: Get.width * 0.80,
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.grey),
                          borderRadius: const BorderRadius.all(Radius.circular(8))
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width:Get.width * 0.80 - 55,
                            child: controller.addName.isEmpty ?
                            const Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              StringRes.select,
                              style: TextStyle(color: Colors.grey),
                            ) : Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              controller.addName,
                            ),
                          ),
                          const Spacer(),
                          (controller.isDrop)
                              ?  SizedBox(
                            child: Image.asset(AssetRes.frame1,height: 13,width: 13,),
                          )
                              :  SizedBox(
                            child: Image.asset(AssetRes.frame,height: 13,width: 13,),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  (controller.isDrop)
                      ? Container(
                    height: 280,
                    width:Get.width * 0.80,
                    decoration: BoxDecoration(
                      border:
                      Border.all(width: 0.5, color: Colors.grey),
                      color: ColorRes.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 35,
                            width: Get.width,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5, color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: TextField(
                                onChanged: (value) => controller
                                    .runFilterSearch(value),
                                decoration: const InputDecoration(
                                  hintText: "Search",
                                  hintStyle:
                                  TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                ),
                                controller:
                                controller.searchController,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 10,
                            ),
                            child: Column(
                                children: List.generate(
                                    controller.findUser.length,
                                        (index) {
                                      return GestureDetector(
                                        onTap: () {
                                          if (index == 0) {
                                            if (controller.locationCheck[index]) {
                                              controller.locationCheck = List.generate(11, (index) => false);
                                              controller.selectLocation = 'Select location/s...';
                                            } else {
                                              controller.locationCheck = List.generate(11, (index) => true);
                                              controller.selectLocation = 'All localities are selected';
                                            }
                                          } else {
                                            controller.locationCheck[index] = !controller.locationCheck[index];
                                            controller.selectLocation = controller.findUser[index];
                                          }
                                          controller.addNameLocation();
                                          controller.update(["property"]);
                                        },
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 20),
                                                height: 15,
                                                width: 15,
                                                child: Checkbox(
                                                    value: controller.locationCheck[index],
                                                    onChanged: (bool? value) {
                                                      if (index == 0) {
                                                        if (controller.locationCheck[index]) {
                                                          controller.locationCheck = List.generate(11, (index) => false);
                                                          controller.selectLocation = 'Select location/s...';
                                                        } else {
                                                          controller.locationCheck = List.generate(11, (index) => true);
                                                          controller.selectLocation = 'All localities are selected';
                                                        }
                                                      } else {
                                                        controller.locationCheck[index] = !controller.locationCheck[index];
                                                        controller.selectLocation = controller.findUser[index];
                                                      }
                                                      controller.addNameLocation();
                                                      controller.update(["property"]);
                                                    }),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 20),
                                                child: Text(
                                                  controller
                                                      .findUser[index],
                                                  style: const TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    })),
                          )
                        ],
                      ),
                    ),
                  )
                      : const SizedBox(),
                  const SizedBox(height: 35,),
                  Text(
                    StringRes.howMany,
                    style: overpassRegular(
                      color:  ColorRes.color3879E8,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 2,),
                  Text(
                    StringRes.selectAMinimum,
                    style: overpassRegular(
                      color:   const Color(0xFF64748B),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text("1",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      SizedBox(
                        width: Get.width * 0.61,
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.white,
                            inactiveTickMarkColor: Colors.grey.withOpacity(0.10),
                            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                            valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                            valueIndicatorTextStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          child: Slider(
                            inactiveColor: Colors.grey.withOpacity(0.10),
                            label: controller.range.round().toString(),
                            min: 0.0,
                            max: 60.0,
                            value: controller.range.toDouble(),
                            divisions: 6,

                            onChanged: (value) {
                              controller.range = value.toInt();
                              controller.update(["property"]);
                            },
                          ),
                        ),
                      ),
                      const Text("6",style: TextStyle(color: Colors.grey,fontSize: 20),),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    StringRes.whatIs,
                    style: overpassRegular(
                      color:  ColorRes.color3879E8,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 2,),
                  Text(
                    StringRes.minimumAndMaximum,
                    style: overpassRegular(
                      color:   const Color(0xFF64748B),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text("€50",style: TextStyle(color: Colors.grey,fontSize: 13),),
                      SizedBox(
                        width: Get.width * 0.56,
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.white,
                            inactiveTickMarkColor: Colors.grey.withOpacity(0.10),
                            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                            valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                            valueIndicatorTextStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          child: Slider(
                            inactiveColor: Colors.grey.withOpacity(0.10),
                            label: controller.range2.round().toString(),
                            min: 0.0,
                            max: 2000000.0,
                            value: controller.range2.toDouble(),
                            divisions: 2000000,

                            onChanged: (value) {
                              controller.range2 = value.toInt();
                              controller.update(["property"]);
                            },
                          ),
                        ),
                      ),
                      const Text("€2,000,000+",style: TextStyle(color: Colors.grey,fontSize: 13),),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: Get.width * 0.60,
                        decoration: const BoxDecoration(color: Color(0xFF365CC0),borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Center(child: Text(StringRes.update,style: TextStyle(color: Colors.white),),),
                      ),
                    ),
                  ),
                   SizedBox(height: 20,),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.offAll(()=>DashboardScreen());
                      },
                      child: Container(
                        height: 40,
                        width: Get.width * 0.60,
                        decoration: const BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: const Center(child: Text(StringRes.delete,style: TextStyle(color: Colors.white),),),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
