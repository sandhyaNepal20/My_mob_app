import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
  // [ itemName, itemPrice, imagePath, color ]
  ["Brushes", "500 ", "lib/images/brushes.png", Colors.blue],
  ["Compact powder", "600", "lib/images/compact powder.png", Colors.blue],
  ["Foundation", "800", "lib/images/foundation.png", Colors.blue],
  ["Palate2", "200 ", "lib/images/palate.jpg", Colors.blue],
  ["Mylogo", "150", "lib/images/mylogo.png", Colors.green],
  ["Bb", "50", "lib/images/brushes.png", Colors.brown],
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
