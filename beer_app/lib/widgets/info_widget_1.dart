import 'package:beer_app/model/beer_type.dart';
import 'package:flutter/material.dart';

class InfoWidget_1 extends StatelessWidget {
  const InfoWidget_1({
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${beer.name}",
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
            )
          ],
        ),
      ),
    );
  }
}
