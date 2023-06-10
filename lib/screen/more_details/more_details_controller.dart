import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';

class MoreDetailsController extends GetxController {
  commonContainer({title}) {
    return Container(
      height: 30,
      width: Get.width,
      child: title,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
    );
  }

  yellowContainer () {
    return Center(
      child: Container(
        height: Get.height * 0.22,
        width: Get.width * 0.88,
        decoration: const BoxDecoration(
            color: Color(0xFFFFDE5F),
            borderRadius: BorderRadius.all(Radius.circular(1))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AssetRes.bulb, height: 20, width: 20),
                SizedBox(width: Get.height * 0.001),
                Text("Pro Tip",
                    style: overpassRegular(
                        height: 1.5,
                        color: const Color(0xFF4285F4),
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            Text(StringRes.YouCanUsually,
                textAlign: TextAlign.center,
                style: overpassRegular(
                    color: const Color(0xFF424242), height: 1)),
            SizedBox(height: Get.height * 0.03),
            Text(StringRes.discoverMore,
                textAlign: TextAlign.center,
                style: overpassRegular(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF757575),
                    height: 1)),
          ],
        ),
      ),
    );
  }
}
