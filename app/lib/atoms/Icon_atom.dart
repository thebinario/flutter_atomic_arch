import 'package:flutter/material.dart';

class AtomIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  const AtomIcon({
    Key? key,
    required this.icon,
    this.size = 24.0, // Tamanho padrão
    this.color = Colors.black, // Cor padrão
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
