
import 'dart:convert';

import 'package:http/http.dart';

class AllCategoriesService {

  Future<List<dynamic>> getAllCategories() async {

    Response response =
    await get(Uri.parse('https://fakestoreapi.com/products/categories'));

    List<String> categoriesList = jsonDecode(response.body);

    

    return categoriesList;
  }
  
}