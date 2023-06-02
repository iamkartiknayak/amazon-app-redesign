import 'package:amazon_redesign/pages/you.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './pages/home.dart';
import './pages/cart.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final List<Widget> _widgetOptions = [
    const HomePage(),
    const CartPage(),
    const YouPage(),
  ];

  int currentIndex = 0;

  void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[currentIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 60.0,
        selectedIndex: currentIndex,
        onDestinationSelected: updateIndex,
        destinations: const [
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.bagShopping),
            label: 'Shop',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.cartShopping),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.userAstronaut),
            label: 'You',
          ),
        ],
      ),
    );
  }
}
