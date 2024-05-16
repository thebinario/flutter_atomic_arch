import 'package:flutter/material.dart';
import '../atoms/Icon_atom.dart';
import '../atoms/text_atom.dart';

class ShoppingCartIcon extends StatelessWidget {
  final int itemCount;

  const ShoppingCartIcon({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AtomIcon(icon: Icons.arrow_back),
        if (itemCount > 0)
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Center(
                child: AtomText(
                  '$itemCount',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
