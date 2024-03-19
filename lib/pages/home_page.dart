import 'package:flutter/material.dart';
import 'package:nike_ui/components/button_nav_bar.dart';
import 'package:nike_ui/pages/cart_page.dart';
import 'package:nike_ui/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this  selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //method will update our selected index
  void navigatorBottomBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 201, 201),
      bottomNavigationBar: MyBottomNavbar(
        onTabChange: (index) => navigatorBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
