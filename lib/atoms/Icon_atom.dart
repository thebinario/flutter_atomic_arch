import 'package:flutter/material.dart';

class AtomIcon extends Icon {
  final IconData icon;
  final double size;
  final Color color;

  const AtomIcon({
    Key? key,
    required this.icon,
    this.size = 24.0, // Tamanho padrão
    this.color = Colors.black, // Cor padrão
  }) : super(null);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        icon,
        size: size,
        color: color,
      ),
    );
  }
}
