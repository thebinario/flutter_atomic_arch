import 'package:flutter/material.dart';

class AtomImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;

  const AtomImage(
      this.imageUrl, {
        Key? key,
        this.width,
        this.height,
        this.fit = BoxFit.cover, // Ajuste padrão
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
