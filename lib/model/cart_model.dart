import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
  // [ itemName, itemPrice, imagePath, color ]
  ["Eyeshadow Palate", "800 ", "lib/images/eyeshadowpalate.jpg", Colors.blue],
  ["Blusher", "600", "lib/images/blusher.jpg", Colors.blue],
  ["Foundation", "800", "lib/images/foundation.png", Colors.blue],
  ["Eyeliner", "200 ", "lib/images/Eyeliner.png", Colors.blue],
  ["Lipstick", "150", "lib/images/lipstick.jpg", Colors.green],
  ["Compact powder", "400", "lib/images/compact powder.png", Colors.brown],
];


  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
