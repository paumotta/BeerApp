// ignore_for_file: camel_case_types

import 'package:beer_app/model/beer_type.dart';
import 'package:flutter/material.dart';

class InfoWidget_2 extends StatelessWidget {
  const InfoWidget_2({
    super.key,
    required this.beer,
  });
  final Beer beer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'my_beer_info',
            arguments: <String, String>{
              "name": beer.name,
              "imgurl": beer.beerUrl,
            });
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        backgroundColor: Colors.deepOrange[700],
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              beer.beerUrl,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.all(6),
              child: Row(
                children: [
                  Text(
                    beer.name,
                    style: const TextStyle(fontSize: 10.0),
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
