import 'package:app/atoms/Icon_atom.dart';
import 'package:app/atoms/input_atom.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;

  const SearchBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AtomInput(
            controller: controller,
            hintText: 'Search...',
          ),
        ),
        const AtomIcon(icon: Icons.search),
      ],
    );
  }
}
