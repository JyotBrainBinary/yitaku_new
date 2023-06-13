import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/loginpage_new/login_new.dart';

class DashboardController extends GetxController {
  int currentTab = 0;
  int currentTab2 = 0;

  Future<bool> onWillPop(BuildContext context) async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to Log out ?'),
        actions: [
          TextButton(
            onPressed: () => Get.back(result: false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => Get.to(LoginPageNew()),
            child: Text('Yes'),
          ),
        ],
      ),
    )) ??
        false;
  }

}