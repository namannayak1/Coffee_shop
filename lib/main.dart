import 'package:chai_app/models/chai_shop.dart';
import 'package:chai_app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChaiShop(),
      builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
    );
  }
}
