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
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: _buildPizzas(),
                   ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {}, 
                child: Text("Order now!")),
            )
          ],
        ),
    );
  }

//Metodo que retorna uma lista
List<MenuItem> _buildPizzas(){
  //Instanciando a lista
  List<MenuItem> listaPizzas = [];

  // Pizza => PizzaCard
  for (var item in pizzaData) {
    listaPizzas.add(MenuItem(pizza: item));
  }

  return listaPizzas;

}

}
