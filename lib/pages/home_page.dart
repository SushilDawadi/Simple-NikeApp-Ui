// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          );
        }),
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //logo
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      child: Image.asset(
                        'lib/images/nike_logo.png',
                        color: Colors.white,
                        width: 170,
                        height: 150,
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.grey[800],
                    thickness: 0.2,
                  ),

                  //other pages
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 15.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.75),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.75),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75),
                  ),
                ),
              )
            ],
          )),
      body: _pages[_selectedIndex],
    );
  }
}
