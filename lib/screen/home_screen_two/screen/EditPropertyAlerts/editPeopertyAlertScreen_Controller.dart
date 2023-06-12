import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class EditPropertyAlertController extends GetxController{

  List propertyName = ["AGRICULTURAL LAND","AIRSPACE","APARTMENT","COMMERCIAL","FARMHOUSE","GARAGE","OFFICE","HOUSE OF CHARACTER","MAISONETTE","PALAZZO","PENTHOUSE","PLOT OF LAND","VILLA","TEEEACED HOUSE","TOWNHOUSE"];
  List name = ["Select all","Attard","Bahar ic-Caghaq","Bahrija","Balzan","Binnija","Birkirkara","Blata-Bajda","Bugibba","cdfdf","dsdsd"];
  int range = 10;
  int range2 = 10;
  bool isDrop = false;
  String addName = "";
  List findUser = [];
  String selectLocation = "Select location/s";
  List locationCheck = List.generate(11, (index) => false);
  TextEditingController searchController = TextEditingController();

  void onInit(){
    addNameLocation();
    findUser = name;
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