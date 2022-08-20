// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, prefer_final_fields

import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(icon: Icons.home, isActive: true),
          BottomNavItem(icon: Icons.shopping_cart),
          BottomNavItem(icon: Icons.favorite),
          BottomNavItem(icon: Icons.notifications),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  late IconData icon;
  late bool isActive;

  BottomNavItem({required this.icon, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isActive = true;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon, color: isActive ? Colors.orange : Colors.black),
        ],
      ),
    );
  }
}
