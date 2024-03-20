// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nike_ui/models/cart.dart';
import 'package:nike_ui/models/shoe.dart';
import 'package:nike_ui/pages/shoe_tile_page.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

//Everyone flies.Some flies longer than others
class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your cart'),
      ),
    );
  }
  //shoe dialog to user

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //search box
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),

                //Message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Everyone flies.Some flies longer than others",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hot Picks🔥",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                //lists of shoes in list tile
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      return ShoeTile(
                        shoe: shoe,
                        onTap: () => addShoeToCart(shoe),
                      );
                    },
                  ),
                ),

                //providing some padding from vertical
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Divider(),
                )
              ],
            ));
  }
}
