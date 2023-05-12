import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/api_calling/sing_up_api.dart';
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/utils/StringRes.dart';

class CompleteSignupController extends GetxController {
  bool isNameActive = true;
  bool isSurnameActive = true;
  String dropdownValue = "";



  List<String> list = <String>['Owner', 'Estate Agent', 'Sensar', 'Developer'];// Owner, Estate Agent, Sensar, Developer

  bool isDrop = false;
  bool nameTextActive = false;
  bool surnameTextActive = false;
  String nameError = '';
  String surnameError = '';
  String sellerTypeString = StringRes.selectTeamMember;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();

bool isLoading = false;

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

  onTapCompleteSignUp({String? email,String? pass}) {
    if (validation()) {
     signUpAPi(email: email,pass: pass);

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

  Future<void> signUpAPi({String? email,String? pass}) async {
    isLoading= true;
   await SignUpApi.signUpApi(email, pass, nameController.text, surnameController.text, sellerTypeString, "retail");
   isLoading =false;
  }


}
