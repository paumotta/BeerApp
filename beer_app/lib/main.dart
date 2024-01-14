import 'package:beer_app/model/beer_type.dart';
import 'package:beer_app/screens/beerInfo.dart';
import 'package:beer_app/screens/home.dart';
import 'package:beer_app/widgets/all_pages.dart';
import 'package:beer_app/widgets/api.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home',
      routes: {
        'home': (_) => const HomePage(),
        'my_beer_info': (_) => const BeerInfoPage(),
      },
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: const Text('BeerApp'),
          backgroundColor: const Color.fromARGB(255, 255, 162, 134),
        ),
        body: FutureBuilder(
            future: apiLoadBeer(),
            builder: (
              BuildContext context,
              AsyncSnapshot<List<Beer>> snapshot,
            ) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return pages[actualPage];
            }),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 255, 162, 134),
          onTap: (index) {
            setState(() {
              actualPage = index;
            });
          },
          currentIndex: actualPage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
          ],
        ),
      ),
    );
  }
}
