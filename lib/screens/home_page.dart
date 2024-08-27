import 'package:flutter/material.dart';
import 'package:store_app/Custom%20widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const id = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.trolley))
        ],
        title: const Text('New Trend'),
        centerTitle: true,
      ),
      body: const Center(
        child: ProductCard(),
      ),
    );
  }
}
