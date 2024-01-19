import 'package:chai_app/components/bottom_nav_bar.dart';
import 'package:chai_app/consts.dart';
import 'package:chai_app/pages/cart_page.dart';
import 'package:chai_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigation bottom bar
  int _selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
