
import 'dart:convert';

import 'package:http/http.dart';

class AllCategoriesService {

  Future<List<dynamic>> getAllCategories() async {

    Response response =
    await get(Uri.parse('https://fakestoreapi.com/products/categories'));

    if (response.statusCode == 200) {
  List<String> categoriesList = jsonDecode(response.body);
  return categoriesList;
} else {
  throw Exception('Request failed with status: ${response.statusCode}.'); 
}
  }
  
}