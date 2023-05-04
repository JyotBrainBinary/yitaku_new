import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/utils/asset_res.dart';

class PropertyDetailsController extends GetxController{

  PageController pageController = PageController();

  int pageIndex = 0;

  List image = [
    AssetRes.propertyDetail2,
    AssetRes.propertyDetail3,
    AssetRes.propertyDetail1
  ];



}