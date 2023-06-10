import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/home_loan_calculator/home_loan_calculator_screen.dart';
import 'package:yitaku/screen/loanCalculator/loan_calculator_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class LoanCalculatorScreen extends StatefulWidget {
  LoanCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<LoanCalculatorScreen> createState() => _LoanCalculatorScreenState();
}

class _LoanCalculatorScreenState extends State<LoanCalculatorScreen> {
  LoanCalculatorController loanCalculatorController =
      Get.put(LoanCalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: ColorRes.buttonColor,
        title: const Text(StringRes.homeLoanCalculator),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Text(
                  StringRes.loanTitle,
                  style: overpassRegular(
                      color: const Color(0xFF4285F4),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Image.asset(AssetRes.calculator,
                    height: 200, color: const Color(0xFF4285F4)),
                Text(
                  StringRes.loanSubTitle,
                  style: overpassRegular(
                      color: const Color(0xFF757575),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: Get.height * 0.04),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 35,
                      width: Get.width * 0.23,
                      child: Text("Your Gross\nYearly Income",
                          style: overpassRegular(
                              color: const Color(0xFF757575),
                              fontSize: 10,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(width: Get.width * 0.05),
                    loanCalculatorController.commonTextFilled(
                      loanCalculatorController.euroController,
                      "Eur",
                    ),
                    const Spacer(),

                    //drop down

                    Container(
                      height: 35,
                      width: Get.width * 0.22,
                      // alignment: Alignment.center,
                      // padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: SizedBox(
                        width: 20,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                'Age',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: ColorRes.black,
                                ),
                              ),
                            ),
                            items: loanCalculatorController.items
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          item,
                                          style: overpassRegular(
                                              color: ColorRes.fontGrey,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: loanCalculatorController.selectedValue,
                            onChanged: (value) {
                              setState(() {
                                loanCalculatorController.selectedValue =
                                    value as String;
                              });
                            },
                            menuItemStyleData: const MenuItemStyleData(
                              height: 20,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: Get.height * 0.35,
                              width: Get.width * 0.22,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.02),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 35,
                        width: Get.width * 0.23,
                        child: Text("Joint Applicant\nGross Yearly\nIncome",
                            style: overpassRegular(
                                color: const Color(0xFF757575),
                                fontSize: 10,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(width: Get.width * 0.05),
                      loanCalculatorController.commonTextFilled(
                        loanCalculatorController.ageController,
                        "0",
                      ),
                      const Spacer(),

                      //drop down 2
                      Container(
                        height: 35,
                        width: Get.width * 0.22,
                        // alignment: Alignment.center,
                        // padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: SizedBox(
                          width: 20,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              hint: Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Text(
                                  'Age',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorRes.black,
                                  ),
                                ),
                              ),
                              items: loanCalculatorController.items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            item,
                                            style: overpassRegular(
                                                color: ColorRes.fontGrey,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              value: loanCalculatorController.selectedValue2,
                              onChanged: (value) {
                                setState(() {
                                  loanCalculatorController.selectedValue2 =
                                      value as String;
                                });
                              },
                              menuItemStyleData: const MenuItemStyleData(
                                height: 20,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: Get.height * 0.35,
                                width: Get.width * 0.22,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 35,
                        width: Get.width * 0.23,
                        child: Text("Other Commitments",
                            style: overpassRegular(
                                color: const Color(0xFF757575),
                                fontSize: 10,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(width: Get.width * 0.05),
                      loanCalculatorController.commonTextFilled(
                        loanCalculatorController.otherController,
                        "0",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.05),
                SizedBox(
                    height: 35,
                    width: Get.width * 0.6,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF4285F4))),
                        onPressed: () {
                          Get.to(() => HomeLoanCalculatorScreen());
                        },
                        child: const Text("CALCULATE"))),
                SizedBox(height: Get.height * 0.04),
                Text(StringRes.loanDesOne,
                    textAlign: TextAlign.center,
                    style: overpassRegular(
                        color: const Color(0xFF757575), fontSize: 10)),
                SizedBox(height: Get.height * 0.05),
                Text(StringRes.loanDesTwo,
                    textAlign: TextAlign.center,
                    style: overpassRegular(
                        color: const Color(0xFF757575), fontSize: 10)),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
