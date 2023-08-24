import 'package:flutter/material.dart';
import 'package:food_app/Model/cart_item_model.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  double _value = 0;

  List<CartItemModel> _item = [];

  List<CartItemModel> get item => _item;
  int get currentIndex => _currentIndex;
  double get value => _value;

  void updateIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

  void changeValue() {
    if (_value == 0) {
      _value = 1;
    } else {
      _value = 0;
    }
    notifyListeners();
  }

  //add item to cart
  void deletItem(
    String imageurl,
    String price,
    String title,
  ) {
    _item.remove(CartItemModel(
        imageurl: imageurl,
        price: price.toString(),
        title: title,
        quantity: 0));
  }

  //delete item from cart
  void additem(String imageurl, String price, String title,
      [int quantity = 1]) {
    _item.add(CartItemModel(
        imageurl: imageurl,
        price: price.toString(),
        title: title,
        quantity: quantity));
  }
}
