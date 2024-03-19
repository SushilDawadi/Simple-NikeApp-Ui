// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_ui/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 201, 201),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  'lib/images/nike_logo.png',
                  height: 200,
                  width: 250,
                ),
              ),

              const SizedBox(
                height: 48,
              ),
              //title
              const Text(
                'Just Do It',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),

              const SizedBox(
                height: 24,
              ),

              //subtitle
              const Text(
                  'Brand new sneakers and custom kicks made with premium Quality',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 48,
              ),
              //start
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 41, 41, 41),
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
