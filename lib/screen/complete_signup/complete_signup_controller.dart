import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompleteSignupController extends GetxController {
  bool isNameActive = true;
  bool isSurnameActive = true;

  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue = "";

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
}
