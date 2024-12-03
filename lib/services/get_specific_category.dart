import 'dart:convert';

import 'package:http/http.dart' as http ;

import '../helper/api.dart';
import '../models/product_model.dart';

class GetSpecificCategory {
  Future<List<ProductModel>?> getSpecificCategoryServices({required String category}) async {
      List<dynamic> categorys = await Api().getService(url:'https://fakestoreapi.com/products/category/$category');
      List<ProductModel> SpecificCategory = [];
      for (var item in categorys) {
        SpecificCategory.add(ProductModel.FromJson(item));
      }
      return SpecificCategory;

  }
}
