import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemSelected,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.orange.withOpacity(0.5),
      items: [
        // BottomNavigationBarItem(
        //   icon: Container(
        //     decoration: BoxDecoration(
        //       color: selectedIndex == 0
        //           ? Colors.orange.withOpacity(0.1)
        //           : Colors.transparent,
        //       borderRadius: BorderRadius.circular(15),
        //     ),
        //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        //     child: Row(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         Icon(Icons.home, color: Colors.orange),
        //         if (selectedIndex == 0)
        //           const Padding(
        //             padding: EdgeInsets.only(left: 4),
        //             child: Text("Home", style: TextStyle(color: Colors.orange)),
        //           ),
        //       ],
        //     ),
        //   ),
        //   label: '',
        // ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Card',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
