import 'package:app/atoms/text_atom.dart';
import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  final String productName;
  final String productPrice;

  const ProductListItem({
    Key? key,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AtomText(productName),
      trailing: AtomText(productPrice),
    );
  }
}
