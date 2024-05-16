import 'package:app/atoms/Icon_atom.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: AtomIcon(icon: Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: AtomIcon(icon: Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: AtomIcon(icon: Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
