import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:yitaku/services/pref_service.dart';

class HttpService {
  static Future<http.Response?> getApi({
    required String url,
    Map<String, String>? header,
  }) async {
    try {
      String accessToken = PrefService.getString("registerToken");
      if (header == null && accessToken.isNotEmpty) {
        header = {
          "Content-Type": "application/json",
          "x-access-token": accessToken,
        };
      }
      if (kDebugMode) {
        print("Url => $url");
        print("Header => $header");
      }
      return http.get(
        Uri.parse(url),
        headers: header,
      );
    } catch (e) {
      // showToast(e.toString());
      return null;
    }
  }

  static Future<http.Response?> postApi({
    required String url,
    dynamic body,
    Map<String, String>? header,
  })
  async {
    try {
     // String accessToken = PrefService.getString("registerToken");
      if (header == null ) {
        header = {
          "Content-Type": "application/json",
        };
      }
      if (kDebugMode) {
        print("Url => $url");
        print("Header => $header");
        print("Body => $body");
      }
      return http.post(
        Uri.parse(url),
        headers: header,
        body: body,
      );
    } catch (e) {
      // showToast(e.toString());
      print("=============>>>>>> ${e.toString()} <<<<<<<<=======");
      return null;
    }
  }
}
