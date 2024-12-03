import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> getService({required String url , String? token}) async {
    http.Response responses = await http.get(Uri.parse(url));
    print(responses.body);
    print("there is no a problem with status code");
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    if (responses.statusCode == 200) {
      List<dynamic> category = jsonDecode(responses.body);
      print("there is no a problem with status code");
      print(category);
      return category;
    } else {
      print("there is a problem with status code");
      throw Exception(
          "there is a problem with status code {$responses.statusCode}");
    }
  }
//////////////////////////////////////////////////////////////////////
  Future<dynamic> post(
      {required String url, dynamic body, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "there is a problem with Status code ${response.statusCode} with body ${jsonDecode(response.body)}");
    }
  }
//////////////////////////////////////////////////////////////////////
  Future<dynamic> update(
      {required String url, dynamic body, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "there is a problem with Status code ${response.statusCode} with body ${jsonDecode(response.body)}");
    }
  }
}
