import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeLoanCalculatorController extends GetxController {
  RxInt selectedIndex = 0.obs;

  Map data = {
    "image": [
      AssetRes.hsbc,
      AssetRes.bankofvalletta,
      AssetRes.apsbank,
      AssetRes.medirect,
      AssetRes.bnfbank,
    ],
    "loanOffer": [
      "HSBC Loan Offer bank",
      "BOV Home Loan Offer bank",
      "APS Home Loan Offer bank",
      "MeDirect Home Loan Offer bank",
      "NBF Home Loan Offer bank"
    ],
    "loanDetails": [
      "HSBC Home Loan Details",
      "BOV Home Loan Details",
      "APS Home Loan Details",
      "MeDirect Home Loan Details",
      "NBF Home Loan Details"
    ],
  };

  textWidget(title, subTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            textAlign: TextAlign.start,
            style: overpassMedium(
                color: ColorRes.color757575,
                fontSize: 15)),
        Text(subTitle,
            style: overpassExtraBold(
                color: ColorRes.color757575,
                fontSize: 15)),
      ],
    );
  }
}
