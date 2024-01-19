import 'package:chai_app/models/chai.dart';
import 'package:flutter/material.dart';

class ChaiTile extends StatelessWidget {
  final Chai chai;
  void Function()? onPressed;
  final Widget icon;

  ChaiTile({
    super.key,
    required this.chai,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(chai.name),
        subtitle: Text(chai.price),
        leading: Image.asset(chai.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
