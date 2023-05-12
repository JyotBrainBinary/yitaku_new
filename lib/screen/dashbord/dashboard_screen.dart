import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/bottomBar.dart';
import 'package:yitaku/common/widget/bottomnavigationBar.dart';

import 'package:yitaku/screen/dashbord/dashboard_controller.dart';
import 'package:yitaku/screen/favorites/favorites_screen.dart';
import 'package:yitaku/screen/homeScreen/home_screen.dart';
import 'package:yitaku/screen/home_screen_two/home_screen_two.dart';
import 'package:yitaku/screen/insurance/insurance_screen.dart';
import 'package:yitaku/screen/loanCalculator/loan_calculator_screen.dart';
import 'package:yitaku/screen/profile/profile_screen.dart';
import 'package:yitaku/screen/search/search_screen.dart';

class DashboardScreen extends StatelessWidget {
   DashboardScreen({Key? key}) : super(key: key);

   final DashboardController dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
      return dashboardController.onWillPop(context);
      },
      child: Scaffold(
        body: GetBuilder<DashboardController>(
          id: 'bottom_bar',
          builder: (controller) {
         /*   if (controller.currentTab == 0) {
              return const HomeScreenTwo();
            } else if (controller.currentTab == 1) {
              return SearchScreen();
            } else if (controller.currentTab == 2) {
              return FavoritesScreen();
            } else {
              return ProfileScreen();
            }*/

            if (controller.currentTab2 == 0) {
              return  HomeScreenTwo();
            } else if (controller.currentTab2 == 1) {
              return LoanCalculatorScreen();
            } else {
              return InsuranceScreen();
            }
          },
        ),
        //bottomNavigationBar: bottomNavigationBar(context),
        bottomNavigationBar: bottomNavigationBar2(context),
      ),
    );
  }
}
