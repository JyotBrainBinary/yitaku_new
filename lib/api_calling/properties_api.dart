
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:yitaku/model/properties_model.dart';

import 'package:yitaku/screen/home_screen_two/home_controller_two.dart';
import 'package:yitaku/utils/api_res.dart';


class PropertiesApi {



  static Future propertiesApi(
      ) async {
    try {
      var request = http.Request('GET', Uri.parse(EndPoints.properties));
      request.body = '''
      
      ''';

      http.StreamedResponse response = await request.send();

      HomeControllerTwo homeControllerTwo =Get.put(HomeControllerTwo());

      if (response.statusCode == 200) {
        var data =await response.stream.bytesToString();
        print(jsonDecode(data));

        homeControllerTwo.listProperties = await (jsonDecode(data) as List?)!

            .map((dynamic e) => PropertiesModel.fromJson(e))
            .toList();


        print(homeControllerTwo.listProperties);
        homeControllerTwo.update(["homeTwo"]);

         // return propertiesModelFromJson(jsonDecode(data));


        
      }
      else {
        print(response.reasonPhrase);
        print("error is :${response.reasonPhrase}");

      }

    } catch (e) {
      return [];
    }
  }
}
