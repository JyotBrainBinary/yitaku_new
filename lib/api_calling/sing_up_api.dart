import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:yitaku/screen/goal_screen/goal_screen.dart';
import 'package:yitaku/services/http_services.dart';
import 'package:yitaku/services/pref_service.dart';
import 'package:yitaku/utils/api_res.dart';
import 'package:yitaku/utils/popup.dart';
import 'package:yitaku/utils/pref_keys.dart';

class SignUpApi {
  static Future signUpApi(String? email, String? pass, String? name,
      String? surname, String? hear, String? seller) async {
    //   String accesToken = PrefService.getString(PrefKeys.registerToken);
    try {
      String url = EndPoints.signUp;

      Map<String, String> param = {
        "email": email.toString(),
        "password": pass.toString(),
        "name": name.toString(),
        "surname":surname.toString(),
        "hear_about_yitaku":hear.toString(),
        "kind_of_seller":seller.toString(),
      };

      var headers = {
        'Content-Type': 'application/json'
      };
      var request = http.Request('POST', Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:MnzfTFu7/auth/signup'));
      request.body = json.encode(param);
      request.headers.addAll(headers);


      http.StreamedResponse response = await request.send();
var data;
      if (response.statusCode == 200) {
         data = await response.stream.bytesToString();
        print(jsonDecode(data));
      await  PrefService.setValue(PrefKeys.registerToken, jsonDecode(data)["authToken"]);
   print( jsonDecode(data)["authToken"]);
   print(param);
        // flutterToast("signup successfull!" );



        Get.to(() => GoalScreen());


      }
      else {
        data = await response.stream.bytesToString();

        print(response.reasonPhrase);
        // errorToast(jsonDecode(data)["message"]);

      }

    } catch (e) {
      return [];
    }
  }
}
