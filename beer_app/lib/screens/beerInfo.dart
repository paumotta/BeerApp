import 'package:beer_app/widgets/beer_fav_widgets/fav_button.dart';
import 'package:flutter/material.dart';

class BeerInfoPage extends StatefulWidget {
  const BeerInfoPage({super.key});

  @override
  State<BeerInfoPage> createState() => _BeerInfoPageState();
}

class _BeerInfoPageState extends State<BeerInfoPage> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 162, 134),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data["name"].toString(),
                style: const TextStyle(fontSize: 26.0),
              ),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [FavoriteButton()],
              )
            ],
          )
          //actions: const [FavoriteButton()],
          ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(right: 40, left: 40, top: 25),
          child: ListView(
            children: [
              Center(
                child: Image.network(
                  data["imgurl"].toString(),
                  height: 500,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 25, bottom: 15),
                child: Text(
                  data["name"].toString(),
                  style: const TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                thickness: 1,
                color: Color.fromARGB(255, 71, 71, 71),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 162, 134),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Our flagship beer that kick started the craft beer revolution. This is James and Martin'
                  's original take on an American IPA, subverted with punchy New Zealand hops.'
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
