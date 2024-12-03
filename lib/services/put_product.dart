import '../helper/api.dart';
import '../models/product_model.dart';

class PutProduct {
  Future<ProductModel> put(
      {required int id,
      required String title,
      required double price,
      required String description,
      required String category,
      required String image,
      required double rate,
      required double count}) async {
    Map<String, dynamic> response =
        await Api().post(url: "https://fakestoreapi.com/products", body: {
      "id": id,
      "title": title,
      "price": price,
      "description": description,
      "category": category,
      "image": image,
      "rating": {"rate": rate, "count": count}
    });
    ProductModel productModel=ProductModel.FromJson(response);
    return productModel;
  }
}
/*
id:22
title:"kkkkkk"
price:55
description:"oppkkll"
category:"jewelery"
image:https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg
rating:{"rate": 4.6,"count": 400}
 */
