import 'package:get/get.dart';

class AllPropertyWithinBudgetController extends GetxController {

  RxBool isDrop1 = false.obs;
  RxBool isDrop2 = false.obs;
  RxBool isDrop3 = false.obs;
  RxBool isDrop4 = false.obs;
  RxList<String> isSelect1 = ["option 1","option 2","option 3"].obs;
  RxList<String> isSelect2 = ["option 1","option 2","option 3"].obs;
  RxList<String> isSelect3 = ["option 1","option 2","option 3"].obs;
  RxList<String> isSelect4 = ["option 1","option 2","option 3"].obs;
  String selectSale = "Select sale/letting...";
  String selectProperty = "Select property type...";
  String selectMaltese = "Select maltese locality...";
  String selectNo = "Select no. of bedroom...";
  RxInt selectedIndex = 0.obs;

}