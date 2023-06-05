import 'package:coffee_shop/pages/offers_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      default:
    }

    return Scaffold(
        appBar: AppBar(
          title: Image.asset("images/logo.png"),
        ),
        body: const OffersPage(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (newIndex) {
            setState(() {
              selectedIndex = newIndex;
            });
          },
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 24,
          selectedItemColor: Colors.yellow.shade400,
          unselectedItemColor: Colors.brown.shade50,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Order'),
          ],
        ));
  }
}
