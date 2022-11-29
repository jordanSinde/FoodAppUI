import 'package:flutter/material.dart';
import 'package:food_app/tabs/burger_tab.dart';
import 'package:food_app/tabs/donut_tab.dart';
import 'package:food_app/tabs/pancakes_tab.dart';
import 'package:food_app/tabs/pizza_tab.dart';
import 'package:food_app/tabs/smoothie_tab.dart';
import 'package:food_app/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(iconPath: 'assets/icons/donut.png'),
    MyTab(iconPath: 'assets/icons/burger.png'),
    MyTab(iconPath: 'assets/icons/smoothie.png'),
    MyTab(iconPath: 'assets/icons/pancakes.png'),
    MyTab(iconPath: 'assets/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 28,
                color: Colors.grey[800],
              ),
              onPressed: () {
                //openDrawer
                // ignore: avoid_print
                print("Menu Taped ");
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 28,
                  color: Colors.grey[800],
                ),
                onPressed: () {
                  //account profile
                  // ignore: avoid_print
                  print(" Taped on person");
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // i want to eat

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 8.0,
              ),
              child: Row(
                children: const [
                  Text(
                    "I want to",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    " EAT",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Tab bar

            TabBar(tabs: myTabs),
            //tab bar view

            Expanded(
              child: TabBarView(
                children: [
                  DonutsTab(),
                  const BurgerTab(),
                  const SmoothieTab(),
                  const PancakesTab(),
                  const PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
