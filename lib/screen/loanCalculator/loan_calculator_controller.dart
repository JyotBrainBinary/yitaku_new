import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class LoanCalculatorController extends GetxController {
  TextEditingController euroController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController otherController = TextEditingController();


  List<String> items = ["Age...","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60"];

  String? selectedValue;
  String? selectedValue2;
  commonTextFilled(controller, title) {
    return Container(
      height: 35,
      width: 120,
      // alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: TextFormField(
        onTap: () {},
        controller: controller,
        style: overpassRegular(fontSize: 16, color: ColorRes.fontGrey),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 10, bottom: 10),
          hintText: title,
          hintStyle: overpassRegular(
            fontSize: 16,
            color: Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}
