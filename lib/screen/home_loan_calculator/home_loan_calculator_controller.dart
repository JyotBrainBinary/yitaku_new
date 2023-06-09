import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeLoanCalculatorController extends GetxController {

  textWidget (title, subTitle) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text(title,
           textAlign: TextAlign.start,
           style: overpassRegular(
               color: ColorRes.color757575,
               fontWeight: FontWeight.w500,
               fontSize: 15)),
       Text(subTitle,
           style: overpassRegular(
               color: ColorRes.color757575,
               fontWeight: FontWeight.bold,
               fontSize: 15)),
     ],
   );
  }

}