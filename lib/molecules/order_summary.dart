import 'package:flutter/material.dart';
import '../atoms/text_atom.dart';
import 'cart_item.dart'; // Assuming you have the CartItem molecule

class OrderSummary extends StatelessWidget {
  final List<CartItem> cartItems;
  final double totalPrice;

  const OrderSummary({
    Key? key,
    required this.cartItems,
    required this.totalPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...cartItems, // Lista os itens do carrinho
        Divider(),
        AtomText('Total: \$${totalPrice.toStringAsFixed(2)}', style: TextStyle(fontWeight: FontWeight.bold)),
        // Adicione outros elementos relevantes, como botões de pagamento e entrega
      ],
    );
  }
}
