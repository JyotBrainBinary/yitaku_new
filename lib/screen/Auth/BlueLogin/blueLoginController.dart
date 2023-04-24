import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/utils/StringRes.dart';

class BlueLoginController extends GetxController {
  // bool boxColor = false;
  bool isPassError = false;

  // bool isEmailError=false;
  bool blueBorder = false;
  bool redBorder = false;
  bool redBorderPass = false;
  bool blueBorderPass = false;

  bool isActive = false;
  bool navigatePass = false;
  bool navigateEmail = false;
  String emailError = "";
  String passError = "";
  bool activeField = true;

  bool activePassField = true;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String userError = '';
  String passwordError = '';

  emailValidation() {
    if (emailController.text.trim() == "") {
      emailError = StringRes.emailError1;
      update(['bluelogintextfield']);
    } else {
      if (RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailController.text)) {
        emailError = '';
        update(['bluelogintextfield']);
      } else {
        emailError = StringRes.emailError2;
        update(['bluelogintextfield']);
      }
    }
  }

  passwordValidation() {
    if (passwordController.text != '') {
      passwordError = '';
    } else {
      passwordError = StringRes.passError2.tr;
    }
    update(['bluelogintextfield']);
  }

  onTapLogin() {
    if (validation()) {
      Get.offAll(() => GoalScreen());
    }
  }

  bool validation() {
    passwordValidation();
    emailValidation();

    if (userError == '' && passwordError == '') {
      return true;
    } else {
      return false;
    }
  }
}
