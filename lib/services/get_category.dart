import 'dart:convert';

import 'package:http/http.dart';
import 'package:store_app/models/product_model.dart';

class GetCategoryService {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    Response response = await get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = jsonDecode(response.body);

      List<ProductModel> productsList = [];

      for (int i = 0; i < jsonResponse.length; i++) {
        productsList.add(ProductModel.fromJson(jsonResponse[i]));
      }

      return productsList;
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  }
}
