import 'package:flutter/material.dart';
import 'package:store_app/Custom%20widgets/custom_button.dart';
import 'package:store_app/Custom%20widgets/custom_text_field.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static const id = '/update product page';

  String? productName, desc, imageUrl;
  String? price;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
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
                  UpdateProductService().updateProduct(
                      title: productName!,
                      price: price!,
                      description: desc!,
                      image: imageUrl!,
                      category: product.category!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
