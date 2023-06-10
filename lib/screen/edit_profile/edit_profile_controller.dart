import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/colorRes.dart';

class EditProfileController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController noController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  bool nameTextActive = true;

  commonTextFilled(controller, title) {
    return Container(
      height: 48,
      width: Get.width,
      // alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: TextFormField(
        onTap: () {},
        controller: controller,
        style: overpassRegular(fontSize: 16, color: ColorRes.fontGrey),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 10),
          hintText: title,
          hintStyle: overpassRegular(fontSize: 16, color: Colors.grey.shade400),
        ),
      ),
    );
  }

  static EditProfileController get to => Get.find<EditProfileController>();

  File? image;
  String? imagePath;
  final _picker = ImagePicker();

  Future<void> getImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      imagePath = pickedFile.path;
      print(imagePath);
      update();
    } else {
      print('No image selected.');
    }
  }
}
