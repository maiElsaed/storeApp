import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http ;
import '../helper/api.dart';
import '../models/product_model.dart';
class ProductService{
   late List<ProductModel> products;
   ProductService();
  Future<List<ProductModel>> get_product() async{
    print("//////////////////////////////////////////////////,.,.,.,.,.");

    List<dynamic> data =await Api().getService(url:'https://fakestoreapi.com/products');
       print("data id $data");
       print("//////////////////////////////////////////////////");
       print("okkkkk9");
       List<ProductModel>products=[];

       for(int i=0;i<data.length;i++){
         products.add(ProductModel.FromJson(data[i]));
        // print("klklklklklklklkkl     " + ProductModel.FromJson(item).toString());
        // print(item);
         print("okkkkk1");
       }
       print("okkkkk2");
       return products;

  }
}