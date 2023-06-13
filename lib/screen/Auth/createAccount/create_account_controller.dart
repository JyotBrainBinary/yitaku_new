import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/complete_signup/complete_signin_screen.dart';

import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/utils/StringRes.dart';

class CreateAccountController extends GetxController {
  bool isChecked = false;


  bool emailTextActive = false;
  bool passTextActive = false;

  String passwordError = '';
  String emailError = "";

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  emailValidation()
  {
    if (emailController.text.trim() == "") {
      emailTextActive = false;
      emailError = StringRes.emailError1;
      update(['createaccount']);
    } else {
      if (RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailController.text)) {
        emailError = '';
        update(['createaccount']);
      } else {
        emailTextActive = false;
        emailError = StringRes.emailError2;
        update(['createaccount']);
      }
    }

  }

  passwordValidation() {
    if (passwordController.text.length > 7) {
      passwordError = '';
    } else {
      passTextActive = false;
      passwordError = StringRes.passError2;
    }
    update(['createaccount']);
  }

  onTapSignUp() {
    if (validation()) {
      Get.to(() => CompleteSignupScreen(
        emailPass: emailController.text,
        pass: passwordController.text,
      ),);
    }
    update(['createaccount']);
  }

  bool validation() {
    passwordValidation();
    emailValidation();

    if (emailError == '' && passwordError == '') {
      return true;
    } else {
      return false;
    }
  }
}
