import 'package:chai_app/components/chai_tile.dart';
import 'package:chai_app/models/chai.dart';
import 'package:chai_app/models/chai_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Chai chai) {
    Provider.of<ChaiShop>(context, listen: false).addItemToCart(chai);

    showDialog(context: context,
     builder: (context) => AlertDialog(
      title: Text("Successfully added to cart"),
     ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChaiShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // heading message
              const Text(
                'Janab Kya Lenge Aap',
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // list of chai to buy
              Expanded(
                child: ListView.builder(
                  itemCount: value.chaiShop.length,
                  itemBuilder: (context, index) {
                    //get individual coffee
                    Chai eachChai = value.chaiShop[index];

                    // return the tile
                    return ChaiTile(
                      chai: eachChai,
                      icon: Icon(Icons.add),
                      onPressed: () => addToCart(eachChai),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
