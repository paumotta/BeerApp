import 'package:beer_app/model/beer_type.dart';
import 'package:flutter/material.dart';

class InfoWidget_3 extends StatelessWidget {
  const InfoWidget_3({
    super.key,
    required this.beer,
  });
  final Beer beer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'my_beer_info');
        
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
              height: 200.0,
              width: 170.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
