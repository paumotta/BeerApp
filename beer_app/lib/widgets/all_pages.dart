import 'package:beer_app/screens/fav.dart';
import 'package:beer_app/screens/home.dart';
import 'package:beer_app/screens/search.dart';
import 'package:flutter/material.dart';

 int actualPage = 0; 

List <Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const FavPage(),

  ];