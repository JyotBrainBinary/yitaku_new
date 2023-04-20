import 'package:get/get.dart';

class DashboardController extends GetxController {
  int currentTab = 0;
  void onBottomBarChange(int index) {
    currentTab = index;
    if (index == 0) {

    } else if (index == 1) {

    } else if (index == 2) {

    } else {

    }
    update(['bottom_bar']);
  }

}