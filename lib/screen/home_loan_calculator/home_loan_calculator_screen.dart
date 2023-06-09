import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/all_property_within_budget/all_property_within_budget_screen.dart';
import 'package:yitaku/screen/home_loan_calculator/home_loan_calculator_controller.dart';
import 'package:yitaku/screen/more_details/more_details_screen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeLoanCalculatorScreen extends StatelessWidget {
  HomeLoanCalculatorScreen({super.key});

  HomeLoanCalculatorController homeLoanCalculatorController =
      Get.put(HomeLoanCalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorRes.color3879E8,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text(StringRes.homeLoanCalculator),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: Get.height * 0.04),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8),
                //   child: Text("Hey First Name,",
                //       style: overpassRegular(
                //           fontSize: 20,
                //           color: const Color(0xFF0059C1),
                //           fontWeight: FontWeight.bold)),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8),
                //   child: Text("Here are your home loan calculation results",
                //       style: overpassRegular(
                //           color: ColorRes.color757575, fontSize: 16)),
                // ),
                // SizedBox(height: Get.height * 0.03),
                ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15),
                  itemCount: homeLoanCalculatorController.data["image"].length,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(12),
                    height: Get.height * 0.42,
                    width: Get.width,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 5,
                              spreadRadius: 0.2)
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(StringRes.MonthlyRepayment,
                                    style: overpassMedium(
                                        color: ColorRes.color757575,
                                        // fontWeight: FontWeight.w500,
                                        fontSize: 15)),
                                Text("€850",
                                    style: overpassExtraBold(
                                        color: ColorRes.color757575,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ],
                            ),
                            Image.asset(
                              homeLoanCalculatorController.data["image"][index],
                              height: Get.height * 0.08,
                              width: Get.width * 0.26,
                              // scale: index == 1 ? 3 : 2.5,
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: (Get.width - 85) / 2,
                              child: homeLoanCalculatorController.textWidget(
                                  StringRes.MaxPropertyPrice, "€250,000"),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: (Get.width - 85) / 2,
                              child: homeLoanCalculatorController.textWidget(
                                  StringRes.MaxLoanAmount, "€25,000"),
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: (Get.width - 85) / 2,
                              child: homeLoanCalculatorController.textWidget(
                                  StringRes.MinDeposit, "€25,000"),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: (Get.width - 85) / 2,
                              child: homeLoanCalculatorController.textWidget(
                                  StringRes.LoanDuration, "40 Year"),
                            ),
                          ],
                        ),
                        const Spacer(),
                        ElevatedButton(
                            style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(horizontal: 35)),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color(0xFF4285F4))),
                            onPressed: () {
                              Get.to(() => MoreDetailsScreen(
                                  title: homeLoanCalculatorController
                                      .data["loanOffer"][index],
                                  subTitle: homeLoanCalculatorController
                                      .data["loanDetails"][index]));
                            },
                            child: const Text("MORE DETAILS")),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                const Center(
                    child: Text("RECALCULATE LOAN",
                        style: TextStyle(
                            color: ColorRes.color757575,
                            decoration: TextDecoration.underline))),
                SizedBox(height: Get.height * 0.04),
                 Center(
                    child: Text("Here are some properties within your budget",
                        style: overpassExtraBold(
                            color: Color(0xFF4285F4),
                            fontSize: 16))),
                SizedBox(height: Get.height * 0.02),
                GridView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => Obx(
                          () => InkWell(
                            onTap: () {
                              homeLoanCalculatorController.selectedIndex.value =
                                  index;
                              Get.to(() => AllPropertyWithinBudgetScreen());
                            },
                            child: Container(
                              height: Get.height * 2,
                              width: 150,
                              color: homeLoanCalculatorController
                                          .selectedIndex.value ==
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
                                      Image.asset(AssetRes.heart_icon, scale: 2.2),
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    )),
                SizedBox(height: Get.height * 0.05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Center(
                          child: Text("VIEW ALL PROPERTIES",
                              style: TextStyle(
                                  color: Color(0xFF4285F4),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))),
                      SizedBox(height: Get.height * 0.035),
                      Text(
                        StringRes.homeLoanCalculatordes1,
                        textAlign: TextAlign.center,
                        style: overpassSemiBold(
                            color: ColorRes.color757575, fontSize: 10),
                      ),
                      SizedBox(height: Get.height * 0.035),
                      Text(
                        StringRes.homeLoanCalculatordes2,
                        textAlign: TextAlign.center,
                        style: overpassSemiBold(
                            color: ColorRes.color757575, fontSize: 10),
                      ),
                      SizedBox(height: Get.height * 0.035),
                      Text(
                        StringRes.homeLoanCalculatordes3,
                        textAlign: TextAlign.center,
                        style: overpassSemiBold(
                            color: ColorRes.color757575, fontSize: 10),
                      ),
                      SizedBox(height: Get.height * 0.035),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
