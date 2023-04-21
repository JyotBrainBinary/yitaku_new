import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/colorRes.dart';

Widget textFild(TextEditingController controller, String hintText, bool boxColor, String text ){
  return Container(
    height: 44,
    width: Get.width,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: boxColor==true ? ColorRes.sky : ColorRes.textfieldBorder),
    ),
    child: TextField(
      controller: controller,
      style: overpassRegular(fontSize: 16, color: ColorRes.fontGrey),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.only(left: 10, bottom: 9),
        hintText: hintText,
        hintStyle: overpassRegular(fontSize: 16, color: ColorRes.hinttext),
      ),
    ),
  );
}