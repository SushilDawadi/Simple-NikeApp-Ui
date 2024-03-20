// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_ui/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, top: 5.0),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          Image.asset(
            shoe.imagePath,
            height: 200,
          ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey),
            ),
          ),

          //name + price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe.name,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$' + shoe.price,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )

          //button add
        ],
      ),
    );
  }
}
