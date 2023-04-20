import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  bool boxColor = false;
  bool isPassError=false;
  bool isEmailError=false;

  GlobalKey<FormState> formKey =GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


}