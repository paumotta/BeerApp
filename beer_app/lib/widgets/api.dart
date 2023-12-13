import 'dart:convert';

import 'package:beer_app/model/beer_type.dart';
import 'package:http/http.dart' as http;

Future<List<Beer>> apiLoadBeer()async{
  final uri = Uri.parse("https://api.punkapi.com/v2/beers");
  final response = await http.get(uri);
  final List<Beer> beer =[];

  if (response.statusCode==200){
    final json = jsonDecode(response.body);
    final List jsonData = json;
    for(var item in jsonData){
       beer.add(Beer.fromJson(item));
    }
    return beer;

  }else{
    throw Exception("La conexión ta mal");
  }

}