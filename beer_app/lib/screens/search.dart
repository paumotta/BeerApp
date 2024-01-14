import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> allBeer = [
    {
      'name': 'ALE1',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE2',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE3',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE4',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE5',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE6',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE7',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE8',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE9',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE10',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE11',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE12',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
    {
      'name': 'ALE13',
      'image_url': 'https://images.punkapi.com/v2/2.png',
      'tagline': 'A Real Bitter Experience.'
    },
  ];

  List<Map<String, dynamic>> searchedBeer = [];

  @override
  void initState() {
    searchedBeer = allBeer;
    super.initState();
  }

  void runFilter(String keyWordEntered) {
    List<Map<String, dynamic>> results = [];
    if (keyWordEntered.isEmpty) {
      results = allBeer;
    } else {
      results = allBeer
          .where((beer) =>
              beer['name'].toLowerCase().contains(keyWordEntered.toLowerCase()))
          .toList();
    }

    setState(() {
      searchedBeer = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => runFilter(value),
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
    );
  }
}



/* Pruebas sobre esto con API
class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    List<Map<Beer, dynamic>> allBeer = [];

    return Scaffold(
      backgroundColor:Colors.deepOrange,
      body: Column(
        children: [
          Expanded (
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: allBeer.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(allBeer[index]['name']),
                  color: const Color.fromARGB(255, 224, 104, 68),
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(allBeer[index]['image_url']),
                    ),
                    title: Text(
                      allBeer[index]['name'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    subtitle: Text(
                      allBeer[index]['tagline'],
                       style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}*/