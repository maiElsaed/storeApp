import 'dart:convert';

import 'package:http/http.dart' as http ;

import '../helper/api.dart';
class AllCategoryServices{
  Future<List<dynamic>?> getServices() async{

      List<dynamic> category=await Api().getService(url:'https://fakestoreapi.com/products/categories');
      return category;

  }
}