import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';

class IntroController extends GetxController {

PageController pageController = PageController();

int pageIndex = 0;

onChagePage(int index){
  pageIndex = index;
  update(["intro"]);
}


  List<String> title = [
    StringRes.setUp,
    StringRes.calculate,
    StringRes.compare,
    StringRes.chat,
  ];
  List<String> description = [
    StringRes.create,
    StringRes.getA,
    StringRes.compareHome,
    StringRes.discuss,
  ];
  List<String> introImage = [
    AssetRes.intro1,
    AssetRes.intro2,
    AssetRes.intro3,
    AssetRes.intro4,
  ];

}
