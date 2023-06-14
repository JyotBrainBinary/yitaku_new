import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PropertyController extends GetxController{

  List propertyName = ["AGRICULTURAL LAND","AIRSPACE","APARTMENT","COMMERCIAL","FARMHOUSE","GARAGE","OFFICE","HOUSE OF CHARACTER","MAISONETTE","PALAZZO","PENTHOUSE","PLOT OF LAND","VILLA","TERRACED HOUSE","TOWNHOUSE"];
  List name = ["Select all","Attard","Bahar ic-Caghaq","Bahrija","Balzan","Binnija","Birkirkara","Blata-Bajda","Bugibba","cdfdf","dsdsd"];
  int range = 10;
  int range2 = 10;
  bool isDrop = false;
  bool rent = false;
  String addName = "";
  List findUser = [];
  String selectLocation = "Select localities...";
  List locationCheck = List.generate(11, (index) => false);
  List propertyCheck = List.generate(15, (index) => false);
  TextEditingController searchController = TextEditingController();

  void onInit(){
    addNameLocation();
    findUser = name;
  }

  checkBox(bool checkBoxValue){
    rent = checkBoxValue;
    update(['property']);
  }


  void runFilterSearch(String enteredKeyword) {
    List results = [];
    if (enteredKeyword.isEmpty) {
      results = name;
    } else {
      results = name
          .where((user) =>
          user.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    findUser = results;
    update(["property"]);
  }

  void addNameLocation(){
    addName = "";
    for(int i=0; i<locationCheck.length; i++){
      if( locationCheck[i] == true){
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