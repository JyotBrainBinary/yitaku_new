import 'package:get/get.dart';
import 'package:yitaku/api_calling/properties_api.dart';

import '../../model/properties_model.dart';

class HomeControllerTwo extends GetxController {
  List<PropertiesModel>? listProperties = [];

/*  @override
  void onInit() {
    propertiesApi();
    super.onInit();
  }*/

  bool isOpenList = false;

  bool isForSale = true;
  bool isRent = false;
  bool isLoading =false;

  PropertiesModel propertiesModel = PropertiesModel(
  );

  Future<void> propertiesApi() async {
    isLoading= true;
    update(["homeTwo"]);
    // propertiesModel =  await PropertiesApi.propertiesApi();
     await PropertiesApi.propertiesApi();
   /* listProperties = propertiesModel as List<PropertiesModel>?;*/

       isLoading= false;
    update(["homeTwo"]);
  }
}
