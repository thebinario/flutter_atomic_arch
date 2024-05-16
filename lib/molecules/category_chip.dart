import 'package:app/atoms/Icon_atom.dart';
import 'package:app/atoms/text_atom.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final IconData? icon;

  const CategoryChip(this.label, {Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) AtomIcon(icon: icon!),
          AtomText(label),
        ],
      ),
    );
  }
}
