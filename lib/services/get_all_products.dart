import 'package:store_app/services/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> jsonResponse =
        await API().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];

    for (int i = 0; i < jsonResponse.length; i++) {
      productsList.add(ProductModel.fromJson(jsonResponse[i]));
    }

    return productsList;
  }
}
