import 'package:flutter/material.dart';
import 'package:pizzamenu/pizza_data.dart';

class MenuItem extends StatelessWidget {
  final Pizza pizza;
  const MenuItem({super.key, required this.pizza});

   @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius:BorderRadius.circular(8) ,
                    child: ColorFiltered(
                      colorFilter: pizza.soldOut ? ColorFilter.mode(
                      Colors.grey, 
                      BlendMode.saturation): ColorFilter.mode(
                      Colors.transparent, 
                      BlendMode.saturation),
                    
                      child: Image.asset(
                        "images/${pizza.photoName}",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pizza.name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          pizza.ingredients,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          //se pizza for true no sould = sould out no preço se for false vai aparecer o preço
                         pizza.soldOut ? "Sould Out":  "\$${pizza.price}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
