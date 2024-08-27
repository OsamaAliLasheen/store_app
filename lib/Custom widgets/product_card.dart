import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
                'lib/assets/eldennnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn.png'),
            const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text('Product name')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Price'),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border),
                  color: isLiked ? Colors.red : Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
