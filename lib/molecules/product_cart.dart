import 'package:app/atoms/button_atom.dart';
import 'package:app/atoms/image_atom.dart';
import 'package:app/atoms/text_atom.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productPrice;
  final VoidCallback onAddToCart;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.productPrice,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AtomImage(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AtomText(productName, style: TextStyle(fontWeight: FontWeight.bold)),
                AtomText(productPrice),
                AtomButton(
                  label: 'Add to Cart',
                  onPressed: onAddToCart,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
