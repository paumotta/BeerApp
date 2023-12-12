import 'package:beer_app/widgets/all_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyBeerApp());
}

class MyBeerApp extends StatefulWidget {
  const MyBeerApp({super.key});

  @override
  State<MyBeerApp> createState() => _MyBeerAppState();
}

class _MyBeerAppState extends State<MyBeerApp> {
  int actualPage = 0; 

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
            title: const Text('BeerApp'),
            backgroundColor: const Color.fromARGB(255, 255, 162, 134),
          ),

        body: pages[actualPage],

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 255, 162, 134),
          onTap: (index){
            setState(() {
              actualPage = index;
            });
          },
          currentIndex: actualPage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites'),
          ],
        ),
      
      ),
    );
  }
}