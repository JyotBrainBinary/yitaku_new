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

class LoginApi {
  static Future loginApi(String? email, String? pass
 ) async {
    //   String accesToken = PrefService.getString(PrefKeys.registerToken);
    try {
      String url = EndPoints.login;

      Map<String, String> param = {
        "email": email.toString(),
        "password": pass.toString(),

      };
      var headers = {
        'Content-Type': 'application/json'
      };
      var request = http.Request('POST', Uri.parse(EndPoints.login));
      request.body = json.encode(param
        );
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
var data ;
      if (response.statusCode == 200) {

          data = await response.stream.bytesToString();
          print(jsonDecode(data));
          print( jsonDecode(data)["authToken"]);
          await  PrefService.setValue(PrefKeys.loginToken, jsonDecode(data)["authToken"]);
            await PrefService.setValue(PrefKeys.isLogin, true);
          // flutterToast("Login successfull!" );

          Get.to(() => GoalScreen());

      }
      else {
        data = await response.stream.bytesToString();
        print(response.reasonPhrase);
        print(jsonDecode(data));

        // errorToast(jsonDecode(data)["message"]);


      }
    } catch (e) {
      return [];
    }
  }
}
