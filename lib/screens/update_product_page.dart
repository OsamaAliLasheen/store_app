import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/Custom%20widgets/custom_button.dart';
import 'package:store_app/Custom%20widgets/custom_text_field.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});

  static const id = '/update product page';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, imageUrl;

  String? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  labelText: 'Product Name',
                  onchanged: (data) {
                    productName = data;
                  },
                ),
                CustomTextField(
                  labelText: 'Price',
                  keyboardType: TextInputType.number,
                  onchanged: (data) {
                    price = data;
                  },
                ),
                CustomTextField(
                  labelText: 'Description',
                  onchanged: (data) {
                    desc = data;
                  },
                ),
                CustomTextField(
                  labelText: 'Image',
                  onchanged: (data) {
                    imageUrl = data;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  text: 'Update Product',
                  onTap: () {
                    isLoading = true;
                    setState(() {});
                    try {
                      updateProduct(product);
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<ProductModel> updateProduct(ProductModel product) {
    return UpdateProductService().updateProduct(
      title: productName == null ? product.title! : productName!,
      price: price == null ? product.price.toString() : price!,
      description: desc == null ? product.description! : desc!,
      image: imageUrl == null ? product.image! : imageUrl!,
      category: product.category!,
    );
  }
}
