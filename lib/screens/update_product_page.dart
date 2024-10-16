import 'package:flutter/material.dart';
import 'package:store_app/Custom%20widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  static const id = '/update product page';
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            CustomTextField(labelText: 'Title'),
            CustomTextField(labelText: 'Title'),
            CustomTextField(labelText: 'Title'),
            CustomTextField(labelText: 'Title'),
            CustomTextField(labelText: 'Title'),
            CustomTextField(labelText: 'Title'),
          ],
        ),
      ),
    );
  }
}
