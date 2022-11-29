// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:food_app/utils/donut_tile.dart';

class DonutsTab extends StatelessWidget {
  List donutsOnSale = [
    //[donutFlavour, donutPrice, donutColor, imageName]
    ["Ice Cream", "36", Colors.blue, 'assets/images/icecream_donut.png'],
    ["chocolate", "45", Colors.red, 'assets/images/chocolate_donut.png'],
    ["grape ", "84", Colors.purple, 'assets/images/grape_donut.png'],
    ["strawberry", "95", Colors.brown, 'assets/images/strawberry_donut.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavour: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColour: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
