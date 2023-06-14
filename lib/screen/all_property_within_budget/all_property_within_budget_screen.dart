import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/all_property_within_budget/all_property_within_budget_controller.dart';
import 'package:yitaku/screen/filtering_result/filtering_result_screen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class AllPropertyWithinBudgetScreen extends StatelessWidget {
  AllPropertyWithinBudgetScreen({super.key});

  AllPropertyWithinBudgetController allPropertyWithinBudgetController =
      Get.put(AllPropertyWithinBudgetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorRes.buttonColor,
        centerTitle: true,
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back, color: Color(0xFF424242))),
        title: const Text(StringRes.propertiesWithYourBudget,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Color(0xFF424242))),
        actions: [
          const Icon(Icons.notifications_active, color: Color(0xFF424242)),
          SizedBox(width: Get.width * 0.02)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.02),
              InkWell(
                onTap: () {
                  Get.to(() => FilteringResultScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(left: Get.width * 0.06),
                  height: 25,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorRes.color757575),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(width: Get.width * 0.02),
                      Image.asset(
                        AssetRes.downList,
                        height: 10,
                        color: ColorRes.blue,
                      ),
                      const SizedBox(width: 5),
                      Text("Filters",
                          style: overpassRegular(
                              color: ColorRes.color757575,
                              fontWeight: FontWeight.bold,
                              height: 1.5)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Get.height *0.04),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.key),
                        SizedBox(width: Get.width * 0.04),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              if (allPropertyWithinBudgetController
                                      .isDrop1.value ==
                                  false) {
                                allPropertyWithinBudgetController
                                    .isDrop1.value = true;
                                print(allPropertyWithinBudgetController
                                    .isDrop1.value);
                              } else {
                                allPropertyWithinBudgetController
                                    .isDrop1.value = false;
                                print(allPropertyWithinBudgetController
                                    .isDrop1.value);
                                allPropertyWithinBudgetController.update();
                              }
                            },
                            child: Container(
                              height: 32,
                              width: Get.width - 61,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: ColorRes.color757575),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Row(
                                children: [
                                  SizedBox(width: Get.width * 0.02),
                                  Text(
                                      allPropertyWithinBudgetController
                                          .selectSale,
                                      style: overpassRegular(
                                          color: ColorRes.color757575)),
                                  const Spacer(),
                                  (allPropertyWithinBudgetController
                                          .isDrop1.value)
                                      ? const Icon(Icons.arrow_drop_up,
                                          color: ColorRes.color757575)
                                      : const Icon(Icons.arrow_drop_down,
                                          color: ColorRes.color757575)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Obx(
                      () => (allPropertyWithinBudgetController.isDrop1.value)
                          ? Container(
                              margin: EdgeInsets.only(left: Get.width * 0.11),
                              width: Get.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorRes.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorRes.textfieldBorder
                                          .withOpacity(0.5),
                                      blurRadius: 10,
                                      spreadRadius: 0.5),
                                ],
                              ),
                              child: Column(
                                children: List.generate(
                                    allPropertyWithinBudgetController
                                        .isSelect1.length, (index) {
                                  allPropertyWithinBudgetController.update();

                                  return InkWell(
                                    onTap: () {
                                      allPropertyWithinBudgetController
                                          .isDrop1.value = false;
                                      allPropertyWithinBudgetController
                                              .selectSale =
                                          allPropertyWithinBudgetController
                                              .isSelect1[index];
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      height: 25,
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            allPropertyWithinBudgetController
                                                .isSelect1[index],
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          )),
                                    ),
                                  );
                                }),
                              ),
                            )
                          : const SizedBox(),
                    ),
                    SizedBox(height: Get.height *0.025),
// =+=+=+=+=+=========================================DropDown 2========================================================
                    Row(
                      children: [
                        const Icon(Icons.home_work_outlined),
                        SizedBox(width: Get.width * 0.04),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              if (allPropertyWithinBudgetController
                                      .isDrop2.value ==
                                  false) {
                                allPropertyWithinBudgetController
                                    .isDrop2.value = true;
                                print(allPropertyWithinBudgetController
                                    .isDrop2.value);
                              } else {
                                allPropertyWithinBudgetController
                                    .isDrop2.value = false;
                                print(allPropertyWithinBudgetController
                                    .isDrop2.value);
                                allPropertyWithinBudgetController.update();
                              }
                            },
                            child: Container(
                              height: 32,
                              width: Get.width - 61,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: ColorRes.color757575),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Row(
                                children: [
                                  SizedBox(width: Get.width * 0.02),
                                  Text(
                                      allPropertyWithinBudgetController
                                          .selectProperty,
                                      style: overpassRegular(
                                          color: ColorRes.color757575)),
                                  const Spacer(),
                                  (allPropertyWithinBudgetController
                                          .isDrop2.value)
                                      ? const Icon(Icons.arrow_drop_up,
                                          color: ColorRes.color757575)
                                      : const Icon(Icons.arrow_drop_down,
                                          color: ColorRes.color757575)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Obx(
                      () => (allPropertyWithinBudgetController.isDrop2.value)
                          ? Container(
                              margin: EdgeInsets.only(left: Get.width * 0.11),
                              width: Get.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorRes.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorRes.textfieldBorder
                                          .withOpacity(0.5),
                                      blurRadius: 10,
                                      spreadRadius: 0.5),
                                ],
                              ),
                              child: Column(
                                children: List.generate(
                                    allPropertyWithinBudgetController
                                        .isSelect2.length, (index) {
                                  allPropertyWithinBudgetController.update();

                                  return InkWell(
                                    onTap: () {
                                      allPropertyWithinBudgetController
                                          .isDrop2.value = false;
                                      allPropertyWithinBudgetController
                                              .selectProperty =
                                          allPropertyWithinBudgetController
                                              .isSelect2[index];
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      height: 25,
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            allPropertyWithinBudgetController
                                                .isSelect2[index],
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          )),
                                    ),
                                  );
                                }),
                              ),
                            )
                          : const SizedBox(),
                    ),
                    SizedBox(height: Get.height *0.025),
// =+=+=+=+=+=========================================DropDown 3========================================================
                    Row(
                      children: [
                        const Icon(Icons.location_on),
                        SizedBox(width: Get.width * 0.04),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              if (allPropertyWithinBudgetController
                                      .isDrop3.value ==
                                  false) {
                                allPropertyWithinBudgetController
                                    .isDrop3.value = true;
                              } else {
                                allPropertyWithinBudgetController
                                    .isDrop3.value = false;

                                allPropertyWithinBudgetController.update();
                              }
                            },
                            child: Container(
                              height: 32,
                              width: Get.width - 61,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: ColorRes.color757575),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Row(
                                children: [
                                  SizedBox(width: Get.width * 0.02),
                                  Text(
                                      allPropertyWithinBudgetController
                                          .selectMaltese,
                                      style: overpassRegular(
                                          color: ColorRes.color757575)),
                                  const Spacer(),
                                  (allPropertyWithinBudgetController
                                          .isDrop3.value)
                                      ? const Icon(Icons.arrow_drop_up,
                                          color: ColorRes.color757575)
                                      : const Icon(Icons.arrow_drop_down,
                                          color: ColorRes.color757575)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Obx(
                      () => (allPropertyWithinBudgetController.isDrop3.value)
                          ? Container(
                              margin: EdgeInsets.only(left: Get.width * 0.11),
                              width: Get.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorRes.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorRes.textfieldBorder
                                          .withOpacity(0.5),
                                      blurRadius: 10,
                                      spreadRadius: 0.5),
                                ],
                              ),
                              child: Column(
                                children: List.generate(
                                    allPropertyWithinBudgetController
                                        .isSelect3.length, (index) {
                                  allPropertyWithinBudgetController.update();

                                  return InkWell(
                                    onTap: () {
                                      allPropertyWithinBudgetController
                                          .isDrop3.value = false;
                                      allPropertyWithinBudgetController
                                              .selectMaltese =
                                          allPropertyWithinBudgetController
                                              .isSelect3[index];
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      height: 25,
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            allPropertyWithinBudgetController
                                                .isSelect2[index],
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          )),
                                    ),
                                  );
                                }),
                              ),
                            )
                          : const SizedBox(),
                    ),
                    SizedBox(height: Get.height *0.025),
// =+=+=+=+=+=========================================DropDown 4========================================================
                    Row(
                      children: [
                        const Icon(Icons.bed_outlined),
                        SizedBox(width: Get.width * 0.04),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              if (allPropertyWithinBudgetController
                                      .isDrop4.value ==
                                  false) {
                                allPropertyWithinBudgetController
                                    .isDrop4.value = true;
                              } else {
                                allPropertyWithinBudgetController
                                    .isDrop4.value = false;

                                allPropertyWithinBudgetController.update();
                              }
                            },
                            child: Container(
                              height: 32,
                              width: Get.width - 61,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: ColorRes.color757575),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Row(
                                children: [
                                  SizedBox(width: Get.width * 0.02),
                                  Text(
                                      allPropertyWithinBudgetController
                                          .selectNo,
                                      style: overpassRegular(
                                          color: ColorRes.color757575)),
                                  const Spacer(),
                                  (allPropertyWithinBudgetController
                                          .isDrop4.value)
                                      ? const Icon(Icons.arrow_drop_up,
                                          color: ColorRes.color757575)
                                      : const Icon(Icons.arrow_drop_down,
                                          color: ColorRes.color757575)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Obx(
                      () => (allPropertyWithinBudgetController.isDrop4.value)
                          ? Container(
                              margin: EdgeInsets.only(left: Get.width * 0.11),
                              width: Get.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorRes.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorRes.textfieldBorder
                                          .withOpacity(0.5),
                                      blurRadius: 10,
                                      spreadRadius: 0.5),
                                ],
                              ),
                              child: Column(
                                children: List.generate(
                                    allPropertyWithinBudgetController
                                        .isSelect4.length, (index) {
                                  allPropertyWithinBudgetController.update();

                                  return InkWell(
                                    onTap: () {
                                      allPropertyWithinBudgetController
                                          .isDrop4.value = false;
                                      allPropertyWithinBudgetController
                                              .selectNo =
                                          allPropertyWithinBudgetController
                                              .isSelect4[index];
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      height: 25,
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            allPropertyWithinBudgetController
                                                .isSelect4[index],
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          )),
                                    ),
                                  );
                                }),
                              ),
                            )
                          : const SizedBox(),
                    ),
                    SizedBox(height: Get.height *0.04),
// ===================================================search button=========================================================
                    Container(
                      width: Get.width,
                      margin:  EdgeInsets.only(left: Get.width * 0.11,right: 1),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(ColorRes.buttonColor),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25))))),
                        child: const Text("SEARCH"),
                      ),
                    ),
                    SizedBox(height: Get.height *0.06),
                    Text(StringRes.allPropertiesWithinYourBudget,style: overpassRegular(color: ColorRes.color757575)),
                    SizedBox(height: Get.height *0.03),
                  ],
                ),
              ),
              GridView.builder(
                  itemCount: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  itemBuilder: (context, index) => Obx(
                        () => InkWell(
                      onTap: () {
                        allPropertyWithinBudgetController
                            .selectedIndex.value = index;
                        Get.to(() => AllPropertyWithinBudgetScreen());
                      },
                      child: Container(
                        height: Get.height * 2,
                        width: 150,
                        color: allPropertyWithinBudgetController
                            .selectedIndex.value ==
                            index
                            ? Colors.grey.shade300
                            : Colors.grey.shade200,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Name"),
                                    Text("Type of Seller"),
                                  ],
                                ),
                                Image.asset(AssetRes.heart_icon,
                                    scale: 2.5),
                              ],
                            ),
                            SizedBox(height: Get.height * 0.02),
                            Center(child: Image.asset(AssetRes.home,color: Colors.grey,)),
                            const Spacer(),
                            Text("Name,Localities",
                                style: overpassRegular(
                                    color: const Color(0xFF424242),
                                    fontWeight: FontWeight.bold)),
                            Text(
                              "0 - Name",
                              style: overpassRegular(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF424242)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  )),
              SizedBox(height: Get.height *0.03),
            ],
          ),
        ),
      ),
    );
  }
}
