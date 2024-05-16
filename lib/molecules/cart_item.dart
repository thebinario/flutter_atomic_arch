import 'package:app/atoms/button_atom.dart';
import 'package:app/atoms/image_atom.dart';
import 'package:app/atoms/text_atom.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productPrice;
  final int quantity;
  final VoidCallback onRemoveFromCart;

  const CartItem({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.productPrice,
    required this.quantity,
    required this.onRemoveFromCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AtomImage(imageUrl, width: 50, height: 50),
      title: AtomText(productName),
      subtitle: AtomText('\$$productPrice x $quantity'),
      trailing: AtomButton(
        label: 'Remove',
        onPressed: onRemoveFromCart,
      ),
    );
  }
}
