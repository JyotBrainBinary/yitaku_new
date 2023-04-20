import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlueLoginController extends GetxController{
  bool boxColor = false;
  bool isPassError=false;
  bool isEmailError=false;


  bool isActive =false;


  bool activeField =true;

  bool activePassField =true;

  GlobalKey<FormState> formKey =GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  void validator(String val){
    if (val.toString().isEmail == false) {
    activeField = true;

       "Please enter valid email";

    }
    update(["email"]);

    return null;

  }
}