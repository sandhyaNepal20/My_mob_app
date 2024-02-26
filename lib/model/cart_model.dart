import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
  // [ itemName, itemPrice, imagePath, color ]
  ["Eyeshadow Palate", "800 ", "lib/images/eyeshadowpalate.jpg", Colors.pink],
  ["Blusher", "600", "lib/images/blusher.jpg", Colors.pink],
  ["Foundation", "800", "lib/images/foundation.png", Colors.pink],
  ["Eyeliner", "200 ", "lib/images/Eyeliner.png", Colors.pink],
  ["Lipstick", "150", "lib/images/lipstick.jpg", Colors.pink],
  ["Compact powder", "400", "lib/images/compact powder.png", Colors.pink],
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
