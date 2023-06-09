import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/api_calling/login_api.dart';
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/utils/StringRes.dart';

class LoginNewController extends GetxController
{

  bool emailTextActive =false;
  bool passTextActive =false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

RxBool isLoading =false.obs;

  String passwordError = '';
  String emailError = "";


  emailValidation() {
    if (emailController.text.trim() == "") {
emailTextActive =false;
      emailError = StringRes.emailError1;
      update(['newlogin']);
    } else {
      if (RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailController.text)) {
        emailError = '';
        update(['newlogin']);
      } else {
        emailTextActive =false;
        emailError = StringRes.emailError2;
        update(['newlogin']);
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
    update(['newlogin']);
  }

  onTapLogin() {



    if (validation()) {
      loginApi();

    }
    update(['newlogin']);
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

  Future<void> loginApi() async {
    isLoading.value = true;
    await LoginApi.loginApi(emailController.text, passwordController.text);
    isLoading.value =false;
    update(['newlogin']);
  }


}