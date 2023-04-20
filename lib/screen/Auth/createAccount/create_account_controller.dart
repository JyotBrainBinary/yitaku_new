import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  bool boxColor = false;
  bool isPassError = false;
  bool isEmailError = false;
  bool isChecked = false;

  bool isActiveEmailField = true;
  bool isActivePassField = true;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
