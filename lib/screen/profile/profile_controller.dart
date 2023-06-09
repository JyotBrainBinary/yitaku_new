import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';

class ProfileController extends GetxController {
  logOutButton({onPressed}) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: Get.height * 0.065,
        width: Get.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          border: Border.all(
            color: const Color(0xFF9E9E9E),
          ),
        ),
        child: Text("LOG OUT",
            style: overpassRegular(
              height: 1.6,
              color: const Color(0xFF757575),
            )),
      ),
    );
  }
}
