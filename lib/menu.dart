import 'package:flutter/material.dart';
import 'package:pizzamenu/menu_item.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  // This widget is the root of your application.
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pizza Menu"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MenuItem(),
              MenuItem(),
              MenuItem(),
              MenuItem(),
              MenuItem(),
              MenuItem(),
            ]
             ),
        ),
    );
  }
}
