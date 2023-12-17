
import 'package:beer_app/model/beer_type.dart';
import 'package:beer_app/widgets/beer_info_widgets/info_widget_1.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({
    super.key,
    required this.beerList,
    
  });

  final List<Beer> beerList;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(bottom:10),
          child: Text(
            'Categoria',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          width: 10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context,index){
              return InfoWidget_1(beer: beerList[index]);
           },
          ),
        ),
      ],
    );
  }
}
