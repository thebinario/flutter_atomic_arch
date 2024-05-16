import 'package:flutter/material.dart';
import '../atoms/text_atom.dart';

class EmptyCartMessage extends StatelessWidget {
  const EmptyCartMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AtomText('Your cart is empty.'),
    );
  }
}
