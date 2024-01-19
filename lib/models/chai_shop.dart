import 'package:flutter/material.dart';
import 'chai.dart';

class ChaiShop extends ChangeNotifier {
  final List<Chai> _shop = [
    Chai(
      name: 'Gandhi Chai',
      price: "5.0",
      imagePath: "lib/images/cutting.jpeg",
    ),
    Chai(
      name: 'Kulhad Chai',
      price: "15.0",
      imagePath: "lib/images/kulhad.jpeg",
    ),
    Chai(
      name: 'Bappa Chai',
      price: "10.0",
      imagePath: "lib/images/Bappa.jpeg",
    ),
    Chai(
      name: 'Chai Sutta Bar(Speacial)',
      price: "20.0",
      imagePath: "lib/images/csb.png",
    ),
     Chai(
      name: 'Gupta Ji',
      price: "7.0",
      imagePath: "lib/images/GuptaJi.jpeg",
    ),
    Chai(
      name: 'Black Tea',
      price: "10.0",
      imagePath: "lib/images/blacktea.jpeg",
    ),
     Chai(
      name: 'Cutting',
      price: "10.0",
      imagePath: "lib/images/coffee-cup.png",
    ),
    Chai(
      name: 'Coffee',
      price: "20.0",
      imagePath: "lib/images/coffee.png",
    ),
    Chai(
      name: 'Iced Tea',
      price: "35.0",
      imagePath: "lib/images/iced-tea.png",
    ),
    Chai(
      name: 'Tension Chai',
      price: "0.0",
      imagePath: "lib/images/tea-cup.png",
    ),
    Chai(
      name: 'Green Tea',
      price: "5.0",
      imagePath: "lib/images/tea.png",
    ),
  ];

  // user cart
  List<Chai> _userCart = [];

  //get coffee
  List<Chai> get chaiShop => _shop;

  //get your cart
  List<Chai> get userCart => _userCart;

  //add items to your cart
  void addItemToCart(Chai chai) {
    _userCart.add(chai);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Chai chai) {
    _userCart.remove(chai);
    notifyListeners();
  }
}
