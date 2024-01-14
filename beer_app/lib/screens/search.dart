import 'package:beer_app/model/beer_type.dart';
import 'package:beer_app/widgets/api.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> searchedBeer = [];

  @override
  void initState() {
    super.initState();
    // Inicializa searchedBeer con la lista vacía
    searchedBeer = [];
  }

  void runFilter(String keyWordEntered, List<Beer> beerList) {
    List<Map<String, dynamic>> results = [];
    if (keyWordEntered.isEmpty) {
      // Si la palabra clave está vacía, muestra toda la lista
      results = beerList
          .map((beer) => {
                'name': beer.name,
                'image_url': beer.beerUrl,
                'tagline': beer.tagline,
              })
          .toList();
    } else {
      // Filtra la lista por la palabra clave
      results = beerList
          .where((beer) =>
              beer.name.toLowerCase().contains(keyWordEntered.toLowerCase()))
          .map((beer) => {
                'name': beer.name,
                'image_url': beer.beerUrl,
                'tagline': beer.tagline,
              })
          .toList();
    }

    setState(() {
      searchedBeer = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: apiLoadBeer(),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<Beer>> snapshot,
      ) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final beerList = snapshot.data!;
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.deepOrange,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) => runFilter(value, beerList),
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: searchedBeer.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(searchedBeer[index]['name']),
                        color: const Color.fromARGB(255, 224, 104, 68),
                        elevation: 3,
                        margin: const EdgeInsets.symmetric(vertical: 7),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(searchedBeer[index]['image_url']),
                          ),
                          title: Text(
                            searchedBeer[index]['name'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            searchedBeer[index]['tagline'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
