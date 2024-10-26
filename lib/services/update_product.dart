import 'dart:convert';

import 'package:http/http.dart';
import 'package:store_app/services/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Response response =
        await API().put(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    });
    if (response.statusCode == 200) {
      return ProductModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(
          'Request failed with status: ${response.statusCode} with body: ${jsonDecode(response.body)}');
    }
  }
}
