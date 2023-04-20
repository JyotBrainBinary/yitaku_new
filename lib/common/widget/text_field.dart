import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/colorRes.dart';

Widget textFild(TextEditingController controller, String hintText, bool boxColor, String text ){
  return Container(
    height: Get.height * 0.05,
    width: Get.width,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: boxColor==true ? ColorRes.appColor : Colors.grey.withOpacity(0.4)),
    ),
    child: TextField(


      controller: controller,
      decoration: InputDecoration(

        border: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 10, bottom: 9),
        hintText: hintText,
        hintStyle: regular(fontSize: 17, color: Colors.grey),
      ),
    ),
  );
}