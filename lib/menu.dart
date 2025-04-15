import 'package:flutter/material.dart';
import 'package:pizzamenu/menu_item.dart';
import 'package:pizzamenu/pizza_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pizza Menu"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MenuItem(pizza: pizzaData[0]),
              MenuItem(pizza: pizzaData[1]),
              MenuItem(pizza: pizzaData[2]),
              MenuItem(pizza: pizzaData[3]),
            ]
             ),
        ),
    );
  }
}
