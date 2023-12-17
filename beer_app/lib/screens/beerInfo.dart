import 'package:flutter/material.dart';

class BeerInfoPage extends StatefulWidget {
  const BeerInfoPage({super.key});

  @override
  State<BeerInfoPage> createState() => _BeerInfoPageState();
}

class _BeerInfoPageState extends State<BeerInfoPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.deepOrange,
      appBar: AppBar(
        title: const Text('Beer Info'),
        backgroundColor: const Color.fromARGB(255, 255, 162, 134),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
      )
    );

  }
}