import 'package:flutter/foundation.dart';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});
  //this.id,this.title,this.price,this.description,this.category,this.image,this.rating
  factory ProductModel.FromJson(json) {
    return ProductModel(
      id: json["id"],
      title: json["title"],
      price: json["price"],
      description: json["description"],
      category: json["category"],
      image: json["image"],
      rating: RatingModel.FromJson(json['rating']),
    );
  }
}

class RatingModel{
  final double rate;
  final double count;
  RatingModel({required this.rate,required this.count});
  factory RatingModel.FromJson(jsondata){
   return RatingModel(
       rate:jsondata['rate'],
       count:jsondata['count']
    );
  }
}
