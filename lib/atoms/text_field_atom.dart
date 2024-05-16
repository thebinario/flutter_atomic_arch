import 'package:flutter/material.dart';

class TextFieldAtom extends StatelessWidget {
  final TextEditingController controller; // Controlador de texto
  final String hintText; // Texto de dica
  final bool obscureText; // Para senhas (opcional)
  final TextInputType keyboardType; // Tipo de teclado (opcional)

  const TextFieldAtom({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText = false, // Padrão: não é senha
    this.keyboardType = TextInputType.text, // Padrão: teclado de texto
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(), // Borda simples
      ),
    );
  }
}
