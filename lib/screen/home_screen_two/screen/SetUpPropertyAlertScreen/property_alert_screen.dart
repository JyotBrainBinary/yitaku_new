import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/home_screen_two/screen/SetUpPropertyAlertScreen/propertyController.dart';
import 'package:yitaku/screen/home_screen_two/screen/propertyAlerts/propertyAlerts.dart';
import 'package:yitaku/utils/colorRes.dart';

import '../../../../utils/StringRes.dart';

class SetUpPropertyAlertScreen extends StatelessWidget {
  SetUpPropertyAlertScreen({Key? key}) : super(key: key);

   PropertyController propertyController = Get.put(PropertyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorRes.color3879E8,
        centerTitle: true,
        title: const Text(StringRes.propertyAppBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: GetBuilder<PropertyController>(
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
                    Container(
                      height: 35,
                      width: Get.width * 0.30,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.70),
                          borderRadius: const BorderRadius.all(Radius.circular(8))
                      ),
                      child: const Center(
                        child: Text(StringRes.bUY,style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 35,
                      width: Get.width * 0.30,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.70),
                          borderRadius: const BorderRadius.all(Radius.circular(8))
                      ),
                      child: const Center(
                        child: Text(StringRes.bUY,style: TextStyle(color: Colors.white),),
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
                    propertyController.propertyName.length,
                        (index) {
                      return GestureDetector(
                        onTap: () {
                          //propertyController.onTapColor2(index);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 10),
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.70),
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            /*color:
                              propertyController.clickTapColor2 == index
                                  ? ColorRes.color3879E8
                                  : Colors.transparent,*/
                          ),
                          child: Text(
                            propertyController.propertyName[index],
                            style: overpassRegular(
                              fontWeight:FontWeight.w500,
                              color: Colors.white,
                              // color:propertyController.clickTapColor2 == index ? ColorRes.white : const Color(0xFF64748B),
                            ),
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
                    if (propertyController.isDrop == false) {
                      propertyController.isDrop = true;
                    } else {
                      propertyController.isDrop = false;
                    }
                    propertyController.update(["property"]);
                  },
                  child: Container(
                    height: 35,
                    width: Get.width,
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(8))
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: Get.width - 50 - 38 - 8,
                          child: propertyController.addName.isEmpty ?
                          const Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            StringRes.select,
                            style: TextStyle(color: Colors.grey),
                          ) : Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            propertyController.addName,
                          ),
                        ),
                        const Spacer(),
                        (propertyController.isDrop)
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
                const SizedBox(height: 2),
                (propertyController.isDrop)
                    ? Container(
                  height: 280,
                  width: Get.width,
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
                              onChanged: (value) => propertyController
                                  .runFilterSearch(value),
                              decoration: const InputDecoration(
                                hintText: "Search",
                                hintStyle:
                                TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                              controller:
                              propertyController.searchController,
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
                                  propertyController.findUser.length,
                                      (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        if (index == 0) {
                                          if (propertyController.locationCheck[index]) {
                                            propertyController.locationCheck = List.generate(11, (index) => false);
                                            propertyController.selectLocation = 'Select location/s...';
                                          } else {
                                            propertyController.locationCheck = List.generate(11, (index) => true);
                                            propertyController.selectLocation = 'All localities are selected';
                                          }
                                        } else {
                                          propertyController.locationCheck[index] = !propertyController.locationCheck[index];
                                          propertyController.selectLocation = propertyController.findUser[index];
                                        }
                                        propertyController.addNameLocation();
                                        propertyController.update(["property"]);
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
                                                  value: propertyController.locationCheck[index],
                                                  onChanged: (bool? value) {
                                                    if (index == 0) {
                                                      if (propertyController.locationCheck[index]) {
                                                        propertyController.locationCheck = List.generate(11, (index) => false);
                                                        propertyController.selectLocation = 'Select location/s...';
                                                      } else {
                                                        propertyController.locationCheck = List.generate(11, (index) => true);
                                                        propertyController.selectLocation = 'All localities are selected';
                                                      }
                                                    } else {
                                                      propertyController.locationCheck[index] = !propertyController.locationCheck[index];
                                                      propertyController.selectLocation = propertyController.findUser[index];
                                                    }
                                                    propertyController.addNameLocation();
                                                    propertyController.update(["property"]);
                                                  }),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 20),
                                              child: Text(
                                                propertyController
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
                          label: propertyController.range.round().toString(),
                          min: 0.0,
                          max: 60.0,
                          value: propertyController.range.toDouble(),
                          divisions: 6,

                          onChanged: (value) {
                            propertyController.range = value.toInt();
                            propertyController.update(["property"]);
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
                    const Text("c50",style: TextStyle(color: Colors.grey,fontSize: 13),),
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
                          label: propertyController.range2.round().toString(),
                          min: 0.0,
                          max: 2000000.0,
                          value: propertyController.range2.toDouble(),
                          divisions: 2000000,

                          onChanged: (value) {
                            propertyController.range2 = value.toInt();
                            propertyController.update(["property"]);
                          },
                        ),
                      ),
                    ),
                    const Text("c200000000 +",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  ],
                ),
                const SizedBox(height: 40,),
                Center(
                  child: GestureDetector(
                    onTap: () {
                        Get.to(()=>PropertyAlertScreen());
                    },
                    child: Container(
                      height: 40,
                      width: Get.width * 0.60,
                      decoration: const BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: const Center(child: Text(StringRes.kEEPMEUPDATEd,style: TextStyle(color: Colors.white),),),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
              ],
            );
          },)
        ),
      ),
    );
  }
}
