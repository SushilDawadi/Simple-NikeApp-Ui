// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_ui/models/cart.dart';
import 'package:nike_ui/models/shoe.dart';
import 'package:provider/provider.dart';

class CartTiles extends StatefulWidget {
  Shoe shoe;
  CartTiles({super.key, required this.shoe});

  @override
  State<CartTiles> createState() => _CartTilesState();
}

class _CartTilesState extends State<CartTiles> {
  //remove items
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeTheItem(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
