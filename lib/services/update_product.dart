import '../helper/api.dart';
import '../models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> update(
      {required int id,
        required String title,
        required double price,
        required String description,
        required String category,
        required String image,
        required double rate,
        required double count}) async {
    Map<String, dynamic> response =
    await Api().update(url: "https://fakestoreapi.com/products", body: {
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

