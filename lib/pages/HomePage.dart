import 'package:flutter/material.dart';
import '../widget/ButtomNavigationMenu.dart';
import 'package:restaurant_menu/widget/DrawerMenu.dart';

import 'Home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_sharp),
          onTap: () {
            //TODO previous page
          },
        ),
        title: const Text('HOME'),
        shadowColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
        centerTitle: true,
      ),
      // appBar: AppBar(
      //   title: Text(title),
      //   backgroundColor: Color.fromARGB(255, 201, 143, 73),),
      body: const Home(),
      // drawer: DrawerMenu(),
      bottomNavigationBar: const ButtomNavigationMenu(),
    );
  }
}
