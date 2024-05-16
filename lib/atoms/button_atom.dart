import 'package:flutter/material.dart';

class AtomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed; // Função chamada ao pressionar
  final Color? backgroundColor; // Cor de fundo (opcional)
  final TextStyle? labelStyle; // Estilo do texto (opcional)

  const AtomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.labelStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, // Cor de fundo customizada ou padrão
        textStyle: labelStyle, // Estilo do texto customizado ou padrão
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Espaçamento interno
      ),
      child: Text(label),
    );
  }
}
