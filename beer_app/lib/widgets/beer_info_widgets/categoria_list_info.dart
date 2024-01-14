import 'package:beer_app/model/beer_type.dart';
import 'package:beer_app/widgets/beer_info_widgets/info_widget_1.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({
    super.key,
    required this.beerList,
    required this.name,
  });

  final List<Beer> beerList;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 150,
          width: 10,
          margin: const EdgeInsets.only(right: 15),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InfoWidget_1(beer: beerList[index]);
            },
          ),
        ),
      ],
    );
  }
}
