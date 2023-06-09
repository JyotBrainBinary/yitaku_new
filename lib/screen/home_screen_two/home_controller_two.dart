import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeControllerTwo extends GetxController {
  bool isOpenList = false;

  bool isForSale = true;

  commonRow(image, title) {
    return Row(
      children: [
        Image.asset(image,height: 22,width: 22),
        SizedBox(width: Get.width * 0.06),
        Text(title, style: overpassRegular(fontSize: 18, color: ColorRes.color757575)),
      ],
    );
  }
}
