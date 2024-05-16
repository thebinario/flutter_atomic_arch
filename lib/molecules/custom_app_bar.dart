import 'package:app/atoms/Icon_atom.dart';
import 'package:app/atoms/text_atom.dart';
import 'package:flutter/material.dart';
import 'search_bar.dart'; // Assuming you have a SearchBar molecule

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController searchController;

  const CustomAppBar({Key? key, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const AtomText('App Title'),
      leading: AtomIcon(icon: Icons.arrow_back),
      actions: [
        SearchBar(controller: searchController),
        AtomIcon(Icons.shopping_cart),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
