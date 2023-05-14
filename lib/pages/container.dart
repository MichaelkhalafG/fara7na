import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wedding_orgnaizer/main.dart';
import 'package:wedding_orgnaizer/pages/home/add_proudact.dart';
import 'package:wedding_orgnaizer/pages/home/category.dart';
import 'package:wedding_orgnaizer/pages/home/home.dart';
import 'package:wedding_orgnaizer/pages/register/profile.dart';

int selected_index = 0;
final screens = [
  Home(halls),
  category(),
  add_product(),
  profile(),
];

class container extends StatefulWidget {
  const container({super.key});

  @override
  State<container> createState() => _containerState();
}

class _containerState extends State<container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[selected_index],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          color: color11,
          child: GNav(
            selectedIndex: selected_index,
            color: color13,
            backgroundColor: color11,
            activeColor: color12,
            tabBackgroundColor: color10,
            padding: const EdgeInsets.all(15),
            gap: 6,
            onTabChange: (index) => setState(() {
              selected_index = index;
            }),
            tabs: [
              GButton(icon: Icons.home, text: "home"),
              GButton(icon: Icons.category, text: "products"),
              GButton(icon: Icons.add, text: "add hall"),
              GButton(icon: Icons.person, text: "profile"),
            ],
          ),
        ));
  }
}
