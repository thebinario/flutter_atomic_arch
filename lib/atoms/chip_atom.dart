import 'package:flutter/material.dart';

class AtomChip extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final TextStyle? labelStyle;

  const AtomChip(
    this.label, {
    Key? key,
    this.backgroundColor,
    this.labelStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: labelStyle),
      backgroundColor: backgroundColor,
    );
  }
}
