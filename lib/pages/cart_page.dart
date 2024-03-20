// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_ui/models/cart.dart';
import 'package:nike_ui/models/shoe.dart';
import 'package:nike_ui/pages/cart_tiles.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    //get individual shoe
                    Shoe individualShoe = value.getUserCart()[index];
                    //return the cart item
                    return CartTiles(
                      shoe: individualShoe,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
