import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/utils/StringRes.dart';

class CompleteSignupController extends GetxController {
  bool isNameActive = true;
  bool isSurnameActive = true;
  String dropdownValue = "";



  List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  bool isDrop = false;
  bool nameTextActive = false;
  bool surnameTextActive = false;
  String nameError = '';
  String surnameError = '';
  String sellerTypeString = StringRes.selectTeamMember;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();



  nameValidation() {
    if (nameController.text.isNotEmpty) {
      nameError = '';
    } else {
      nameTextActive = false;
      nameError = StringRes.passError;
    }
    update(['complete']);
  }
  surnameValidation() {
    if (surnameController.text.isNotEmpty) {
      surnameError = '';
    } else {
      surnameTextActive = false;
      surnameError = StringRes.passError;
    }
    update(['complete']);
  }

  onTapCompleteSignUp() {
    if (validation()) {
      Get.to(() => const GoalScreen());
    }
    update(['newlogin']);
  }
  bool validation() {
    nameValidation();
    surnameValidation();

    if (nameError == '' && surnameError == '') {
      return true;
    } else {
      return false;
    }
  }
}
