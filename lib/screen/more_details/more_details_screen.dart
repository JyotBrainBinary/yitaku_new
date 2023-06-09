import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/more_details/more_details_controller.dart';
import 'package:yitaku/screen/property_detail/property_details_screen.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class MoreDetailsScreen extends StatelessWidget {
 final String title;
 final String subTitle;
  MoreDetailsScreen({super.key, required this.title, required this.subTitle});

  MoreDetailsController moreDetailsController =
      Get.put(MoreDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorRes.color3879E8,
      title: Text(title,style: const TextStyle(overflow: TextOverflow.ellipsis))),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.015),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(StringRes.propertiesWithYourBudget,
                  style: overpassRegular(
                      color: ColorRes.color757575,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: Get.height * 0.02),
            SizedBox(
              height: Get.height * 0.36,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 7),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // if(index == 0){
                        //   Get.to(() => PropertyDetailsScreen());
                        // }
                        Get.to(() => PropertyDetailsScreen());
                      },
                      child: Container(
                        height: Get.width * 0.44,
                        width: Get.width * 0.44,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: ClipOval(
                            child: Image.asset(AssetRes.banglow,
                                fit: BoxFit.fill)),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Center(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        StringRes.villaSanPawl,
                        style: overpassRegular(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w600,
                            color: ColorRes.color757575),
                      ),
                    )
                  ],
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(width: Get.width * 0.04),
                itemCount: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height * 0.035),
                  Text(subTitle,
                      style: overpassRegular(
                          color: ColorRes.color757575,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  SizedBox(height: Get.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(StringRes.monthlyRepayment, style: overpassMedium(color: ColorRes.color757575)),
                      Text("Repayment for Calculation", style: overpassExtraBold(color: ColorRes.color757575),maxLines: 2),
                    ],
                  ),
                  moreDetailsController.commonContainer(),
                  SizedBox(height: Get.height * 0.025),
                  Row(
                    children: [
                      SizedBox( width: Get.width * 0.5,child: Text(StringRes.interestRate, style: overpassMedium(color: ColorRes.color757575))),
                      Text("Interest Rate", style: overpassExtraBold(color: ColorRes.color757575)),
                    ],
                  ),
                  moreDetailsController.commonContainer(),
                  SizedBox(height: Get.height * 0.025),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.5,child: Text(StringRes.aprc, style: overpassMedium(color: ColorRes.color757575))),
                      Text("0", style: overpassExtraBold(color: ColorRes.color757575)),
                    ],
                  ),
                  moreDetailsController.commonContainer(),
                  SizedBox(height: Get.height * 0.025),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.5,
                        child: Text(StringRes.loanPeriod,
                            style: overpassRegular(
                                color: ColorRes.color757575,
                                fontWeight: FontWeight.w500)),
                      ),
                      Text(StringRes.years,
                          style: overpassRegular(
                              color: ColorRes.color757575,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  moreDetailsController.commonContainer(),
                  SizedBox(height: Get.height * 0.025),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.5,child: Text(StringRes.depositAmount, style: overpassMedium(color: ColorRes.color757575))),
                      Text("Deposit Amount", style: overpassExtraBold(color: ColorRes.color757575)),
                    ],
                  ),
                  moreDetailsController.commonContainer(),
                  SizedBox(height: Get.height * 0.025),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.5,child: Text(StringRes.loanAmount, style: overpassMedium(color: ColorRes.color757575))),
                      Text("Loan Amount", style: overpassExtraBold(color: ColorRes.color757575)),
                    ],
                  ),
                  moreDetailsController.commonContainer(),
                  SizedBox(height: Get.height * 0.025),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.5,child: Text(StringRes.totalRepaymentAmountOverLoanPeriod, style: overpassMedium(color: ColorRes.color757575))),
                      Text("0", style: overpassExtraBold(color: ColorRes.color757575)),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.07),
                ],
              ),
            ),
            moreDetailsController.yellowContainer(),
            SizedBox(height: Get.height * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
              child: Text(StringRes.disclaimer,
                  textAlign: TextAlign.center,
                  style: overpassMedium(
                      fontSize: 12, color: const Color(0xFF757575))),
            ),
            SizedBox(height: Get.height * 0.05),
          ],
        ),
      )),
    );
  }
}
