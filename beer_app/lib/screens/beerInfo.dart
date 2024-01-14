import 'package:flutter/material.dart';

class BeerInfoPage extends StatefulWidget {
  const BeerInfoPage({super.key});

  @override
  State<BeerInfoPage> createState() => _BeerInfoPageState();
}

class _BeerInfoPageState extends State<BeerInfoPage> {
  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: const Text('Beer Info'),
          backgroundColor: const Color.fromARGB(255, 255, 162, 134),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.network(
                data["imgurl"].toString(),
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data["name"].toString(),
                      style: const TextStyle(fontSize: 10.0),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Icon(
                        Icons.bookmark_border,
                        size: 12,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Informacion",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}
