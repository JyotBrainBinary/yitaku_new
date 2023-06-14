import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/home_screen_two/filterScreen/filterController.dart';
import 'package:yitaku/utils/colorRes.dart';


class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);

  FilterController filterController = Get.put(FilterController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: GetBuilder<FilterController>(
              id: "check",
              builder: (controller) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Types of property",
                          style: overpassRegular(
                            color:  ColorRes.color3879E8,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              filterController.checkBox(true);
                            },
                            child: Container(
                              height: 30,
                              width: Get.width * 0.43,
                              decoration: BoxDecoration(
                                  color: filterController.property == false
                                      ? Colors.white
                                      : ColorRes.color3879E8,
                                  border: filterController.property == false
                                      ? Border.all(color: Colors.black)
                                      : Border.all(color: Colors.transparent)),
                              child: Center(
                                child: Text(
                                  "Residential",
                                  style:
                                  overpassRegular(
                                    fontWeight:FontWeight.w500,
                                      color: filterController.property == false
                                          ? const Color(0xFF64748B)
                                          : Colors.white),
                                  ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              filterController.checkBox(false);
                            },
                            child: Container(
                              height: 30,
                              width: Get.width * 0.43,
                              decoration: BoxDecoration(
                                  color: filterController.property == false
                                      ? ColorRes.color3879E8
                                      : Colors.white,
                                  border: filterController.property == false
                                      ? Border.all(color: Colors.transparent)
                                      : Border.all(color: Colors.black)),
                              child: Center(
                                child: Text(
                                  "Commercial",
                                  style: overpassRegular(
                                      fontWeight:FontWeight.w500,
                                      color: filterController.property == false
                                          ? Colors.white
                                          : const Color(0xFF64748B))
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                  filterController.property == true ? Container(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: filterController.residentialName.length,
                          itemBuilder: (context, index) {
                              return  Container(
                                margin: const EdgeInsets.only(right: 4, bottom: 10),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                height: 35,
                               // width: (index == 0) ? 140 : (index == 1) ? 100 : (index == 2) ? 120 : (index == 3) ? 100 : (index == 4) ? 100 : 0,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(width: 0.2, color: Colors.grey)),
                                child: Center(
                                    child: Text(
                                      filterController.residentialName[index],
                                      style:  overpassRegular(
                                        fontWeight:FontWeight.w500,
                                        color:filterController.residentialName == index ? ColorRes.white : const Color(0xFF64748B),
                                      ),
                                    )),
                              );
                        },),
                      ) : Container(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filterController.residentialName.length,
                      itemBuilder: (context, index) {
                        return  Container(
                          margin: const EdgeInsets.only(right: 4, bottom: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 35,
                          // width: (index == 0) ? 140 : (index == 1) ? 100 : (index == 2) ? 120 : (index == 3) ? 100 : (index == 4) ? 100 : 0,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(width: 0.2, color: Colors.grey)),
                          child: Center(
                              child: Text(
                                filterController.residentialName[index],
                                style:  overpassRegular(
                                  fontWeight:FontWeight.w500,
                                  color:filterController.residentialName == index ? ColorRes.white : const Color(0xFF64748B),
                                ),
                              )),
                        );
                      },),
                  ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Location",
                          style: overpassRegular(
                            color:  ColorRes.color3879E8,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.isDrop == false) {
                            controller.isDrop = true;
                          } else {
                            controller.isDrop = false;
                          }
                          controller.update(["check"]);
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
                                width: Get.width - 50-38,
                                child: filterController.addName.isEmpty ?
                                Text(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                   "Select location/s...",
                                  style: TextStyle(color: Colors.grey),
                                ) : Text(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  filterController.addName,
                                ),
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
                      const SizedBox(height: 2),
                      (controller.isDrop)
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
                                          onChanged: (value) => filterController
                                              .runFilterSearch(value),
                                          decoration: const InputDecoration(
                                            hintText: "Search",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none,
                                          ),
                                          controller:
                                              filterController.searchController,
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
                                              filterController.findUser.length,
                                              (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            if (index == 0) {
                                              if (filterController.locationCheck[index]) {
                                                filterController.locationCheck = List.generate(11, (index) => false);
                                                filterController.selectLocation = 'Select location/s...';
                                              } else {
                                                filterController.locationCheck = List.generate(11, (index) => true);
                                                filterController.selectLocation = 'All localities are selected';
                                              }
                                            } else {
                                              filterController.locationCheck[index] = !filterController.locationCheck[index];
                                              filterController.selectLocation = filterController.findUser[index];
                                            }
                                            filterController.addNameLocation();
                                            filterController.update(["check"]);
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
                                                      value: filterController.locationCheck[index],
                                                      onChanged: (bool? value) {
                                                        if (index == 0) {
                                                          if (filterController.locationCheck[index]) {
                                                            filterController.locationCheck = List.generate(11, (index) => false);
                                                            filterController.selectLocation = 'Select location/s...';
                                                          } else {
                                                            filterController.locationCheck = List.generate(11, (index) => true);
                                                            filterController.selectLocation = 'All localities are selected';
                                                          }
                                                        } else {
                                                          filterController.locationCheck[index] = !filterController.locationCheck[index];
                                                          filterController.selectLocation = filterController.findUser[index];
                                                        }
                                                        filterController.addNameLocation();
                                                        filterController.update(["check"]);
                                                      }),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 20),
                                                  child: Text(
                                                    filterController
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
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Select price range",
                        style: overpassRegular(
                          color:  ColorRes.color3879E8,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                    children: [
                      const Text("€50",style: TextStyle(color: Colors.grey,fontSize: 13),),
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
                            label: filterController.range.round().toString(),
                            min: 0.0,
                            max: 2000000.0,
                            value: filterController.range.toDouble(),
                            divisions: 2000000,

                            onChanged: (value) {
                              filterController.range = value.toInt();
                              filterController.update(["check"]);
                            },
                          ),
                        ),
                      ),
                      const Text("€200000000 +",style: TextStyle(color: Colors.grey,fontSize: 13),),
                    ],
                  ),
                      /*Row(
                        children: [
                          Text(
                            "c50",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          SizedBox(
                            width: Get.width * 0.61,
                            child: SfSlider(
                              inactiveColor: Colors.grey.withOpacity(0.1),
                              min: 0.0,
                              max: 100.0,
                              thumbShape: SfThumbShape(),
                              value: filterController.range.toDouble(),
                              interval: 20,
                              enableTooltip: true,
                              onChanged: (dynamic value) {
                                filterController.range = value.toInt();
                                filterController.update(["check"]);
                              },
                            ),
                          ),
                          Text(
                            "c200000000 +",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),*/
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Number of bedrooms",
                        style: overpassRegular(
                          color:  ColorRes.color3879E8,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: List.generate(
                            filterController.bedrooms.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              filterController.onTapColor1(index);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 4),
                              height: 35,
                              width: (index == 0)
                                  ? 70
                                  : (index == 5)
                                      ? 70
                                      : 40,
                              decoration: BoxDecoration(
                                  color:
                                      filterController.clickTapColor1 == index
                                          ? ColorRes.color3879E8
                                          : Colors.transparent,
                                  border: Border.all(
                                      width: 0.2, color: Colors.grey)),
                              child: Center(
                                  child: Text(
                                filterController.bedrooms[index],
                                    style: medium(
                                      fontWeight:FontWeight.w500,
                                      color:filterController.clickTapColor1 == index ? ColorRes.white : const Color(0xFF64748B),
                                    ),
                              )),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Type of Seller",
                        style: overpassRegular(
                          color:  ColorRes.color3879E8,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        spacing: 3,
                        alignment: WrapAlignment.start,
                        children: List.generate(filterController.seller.length,
                            (index) {
                          return GestureDetector(
                            onTap: () {
                              filterController.onTapColor2(index);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 4, bottom: 10),
                              height: 35,
                              width: (index == 0)
                                  ? 60
                                  : (index == 1)
                                      ? 100
                                      : (index == 2)
                                          ? 120
                                          : (index == 3)
                                              ? 100
                                              : (index == 4)
                                                  ? 120
                                                  : 0,
                              decoration: BoxDecoration(
                                  color:
                                      filterController.clickTapColor2 == index
                                          ? ColorRes.color3879E8
                                          : Colors.transparent,
                                  border: Border.all(
                                      width: 0.2, color: Colors.grey)),
                              child: Center(
                                  child: Text(
                                filterController.seller[index],
                                    style: overpassRegular(
                                      fontWeight:FontWeight.w500,
                                      color:filterController.clickTapColor2 == index ? ColorRes.white : const Color(0xFF64748B),
                                    ),
                              )),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          height: 40,
                          width: Get.width * 0.50,
                          decoration: const BoxDecoration(
                              color: ColorRes.color365CC0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: const Center(
                            child: Text(
                              "APPLY FILTERS",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                );
              },
            )));
  }
}
