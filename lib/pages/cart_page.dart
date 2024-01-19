import 'package:chai_app/components/chai_tile.dart';
import 'package:chai_app/consts.dart';
import 'package:chai_app/models/chai.dart';
import 'package:chai_app/models/chai_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Chai chai) {
    Provider.of<ChaiShop>(context, listen: false).removeItemFromCart(chai);
  }

  // pay button
  void payNow() {
          
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChaiShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Your Cart'),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    //get individual coffee
                    Chai eachChai = value.userCart[index];

                    //return coffee tile
                    return ChaiTile(
                        chai: eachChai,
                        onPressed: () => removeFromCart(eachChai),
                        icon: Icon(Icons.delete));
                  },
                ),
              ),
              GestureDetector(
                onTap: payNow,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "Paise Do",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 112, 69),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
