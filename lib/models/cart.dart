import 'package:flutter/material.dart';
import 'package:nike_ui/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        description: 'The forward-thinking design of latest signature shoe',
        price: '236',
        imagePath: 'lib/images/nike_two.jpg'),
    Shoe(
        name: 'Air JORDAN',
        description:
            'Iconic sneakers with visible Air cushioning for superior impact protection and timeless street style.',
        price: '220',
        imagePath: 'lib/images/nike_five.png'),
    Shoe(
        name: 'React Infinity Run',
        description:
            'Retro basketball sneakers with premium materials and classic design, perfect for casual wear.',
        price: '210',
        imagePath: 'lib/images/nike_one.jpg'),
    Shoe(
        name: 'Air Force 1',
        description:
            'Legendary basketball shoes known for durability, timeless silhouette, and versatile style.',
        price: '236',
        imagePath: 'lib/images/nike_three.jpg'),
    Shoe(
        name: 'Nike Blazer',
        description:
            'Lightweight running shoes with flexible soles for natural movement and added support.',
        price: '280',
        imagePath: 'lib/images/nike_four.jpg')
  ];
  //list of items in user cart

  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get Cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  //remove items from cart

  void removeTheItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
