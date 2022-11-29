import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavour;
  final String donutPrice;
  // ignore: prefer_typing_uninitialized_variables
  final donutColour;
  final String imageName;
  final double borderRadius = 12;
  const DonutTile({
    super.key,
    required this.donutFlavour,
    required this.donutPrice,
    required this.donutColour,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColour[50],
          borderRadius: BorderRadius.circular((borderRadius)),
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: donutColour[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      color: donutColour,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            //donut picture

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 12.0),
              child: Image.asset(imageName),
            ),
            //donut flavor

            Text(
              donutFlavour,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),

            const SizedBox(
              height: 2,
            ),
            Text(
              "Dunki",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            //love icon + add button

            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 4.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //love Icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  //plus button
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.grey[400],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
