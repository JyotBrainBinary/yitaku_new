import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/loginpage_new/login_new.dart';
import 'package:yitaku/utils/StringRes.dart';

class PasswordResetController extends GetxController{



  bool emailTextActive =false;


  TextEditingController emailController = TextEditingController();


  String emailError = "";


  emailValidation() {
    if (emailController.text.trim() == "") {
      emailTextActive =false;
      emailError = StringRes.emailError1;
      update(['reset']);
    } else {
      if (RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailController.text)) {
        emailError = '';
        update(['reset']);
      } else {
        emailTextActive =false;
        emailError = StringRes.emailError2;
        update(['reset']);
      }
    }
  }

  onTapSubmit() {

    if (validation()) {
      Get.to(() => LoginPageNew());
      emailController.clear();
    }
    update(['newlogin']);
  }

  bool validation() {

    emailValidation();

    if (emailError == '') {
      return true;
    } else {
      return false;
    }
  }




}