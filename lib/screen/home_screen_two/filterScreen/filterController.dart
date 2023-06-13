import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yitaku/utils/colorRes.dart';

class FilterController extends GetxController{

  bool filter = false;
  bool property = false;
  bool isDrop = false;
  int clickTapColor1 = 0;
  int clickTapColor2 = 0;
  TextEditingController searchController = TextEditingController();
  List name = ["Select all","Attard","Bahar ic-Caghaq","Bahrija","Balzan","Binnija","Birkirkara","Blata-Bajda","Bugibba","cdfdf","dsdsd"];
  List bedrooms = ["ANY","1","2","3","4","5+"];
  List seller = ["ANY","OWNER","ESTATE AGENT","SENSAR","DEVEVLOPER"];
  List residentialName = ["Agriculture Land","Airspace","Apartment","Bunten","sdsss","hghty"];
  List chec = [ColorRes.color3879E8];
  int range = 10;
  List findUser = [];
  String selectLocation = "Select location/s";
  List locationCheck = List.generate(11, (index) => false);
  String addName = "";

  void onInit(){
    addNameLocation();
    findUser = name;
  }

  checkBox(bool checkBoxValue){
    property = checkBoxValue;
    update(['check']);
  }

  onTapColor1(int index){
    clickTapColor1 = index;
    update(['check']);
  }

  onTapColor2(int index){
    clickTapColor2 = index;
    update(['check']);
  }

  // serchbar function
  void runFilterSearch(String enteredKeyword) {
    // result show mate blank list
    List results = [];
    if (enteredKeyword.isEmpty) { // text khali hoy tyare
      results = name;
    } else {
      // result blank list ma add name check kare
      results = name
          .where((user) =>
          user.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    // Refresh the UI
      findUser = results;
    update(["check"]);
  }

  void addNameLocation(){
    addName = "";
    for(int i=0; i<locationCheck.length; i++){
        if( [i] == true){
          if(addName.isEmpty){
            addName = addName + findUser[i];
          }else{
            addName = addName +", "+ findUser[i];
          }

        }else{
          locationCheck[0] = false;
        }
    }
    if(locationCheck[0] == true){
      addName = "All localities are selected";
    }
    print(addName);
  }

}