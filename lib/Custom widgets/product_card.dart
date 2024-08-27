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
      height: 220,
      width: 220,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 0,
          blurRadius: 25,
          offset: const Offset(10, 10), // changes position of shadow
        ),
      ]),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Product name',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(r'$Price'),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    icon:
                        Icon(isLiked ? Icons.favorite : Icons.favorite_border),
                    color: isLiked ? Colors.red : Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
