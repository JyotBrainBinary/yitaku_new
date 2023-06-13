import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/filtering_result/filtering_result_controller.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class FilteringResultScreen extends StatelessWidget {
  FilteringResultScreen({super.key});

  FilteringResultController filteringResultController =
      Get.put(FilteringResultController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filtering Results"),
        centerTitle: true,
        backgroundColor: ColorRes.buttonColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.1),
            GridView.builder(
                itemCount: 4,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                itemBuilder: (context, index) => Obx(
                      () => InkWell(
                        onTap: () {
                          filteringResultController.selectedIndex.value = index;
                        },
                        child: Container(
                          height: Get.height * 2,
                          width: 150,
                          color:
                              filteringResultController.selectedIndex.value ==
                                      index
                                  ? Colors.grey.shade300
                                  : Colors.grey.shade200,
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Name"),
                                  Image.asset(AssetRes.heart, scale: 2.2),
                                ],
                              ),
                              SizedBox(height: Get.height * 0.02),
                              Center(child: Image.asset(AssetRes.home)),
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                )),
            SizedBox(height: Get.height * 0.05),
            SizedBox(
              width: Get.width * 0.7,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(ColorRes.buttonColor),
                ),
                child:  Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.refresh),
                    SizedBox(width: Get.width * 0.02),
                    const Text("TRY NEW SEARCH"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
