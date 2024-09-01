import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
// List of shoes
  List<Shoe> shoeShop = const [
    Shoe(
      name: "Shoe 1",
      price: "250",
      imagePath: "lib/images/shopping.png",
      description: "Cool shoe",
    ),
    Shoe(
      name: "Boss",
      price: "450",
      imagePath: "lib/images/shopping2.png",
      description: "Nice shoe",
    ),
    Shoe(
      name: "Tiziano Colosante",
      price: "850",
      imagePath: "lib/images/shopping3.png",
      description: "Very good shoe",
    )
  ];
  // User cart
  List<Shoe> userCart = [];
  // get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
