import 'package:beer_app/widgets/beer_fav_widgets/fav_button.dart';
import 'package:flutter/material.dart';

class BeerInfoPage extends StatefulWidget {
  const BeerInfoPage({super.key});

  @override
  State<BeerInfoPage> createState() => _BeerInfoPageState();
}

class _BeerInfoPageState extends State<BeerInfoPage> {
  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: const Text('Beer Info'),
        backgroundColor: const Color.fromARGB(255, 255, 162, 134),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.network(
              data["imgurl"].toString(),
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    data["name"].toString(),
                    style: const TextStyle(fontSize: 26.0),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                    child: FavoriteButton(),
                  )
                ],
              ),
            ),
            const Text(
              "Informacion",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet consectetur adipiscing elit maecenas lacus, vestibulum natoque ac tincidunt cursus suscipit scelerisque posuere, luctus egestas blandit duis eget congue nam quisque. Curabitur laoreet cras nec mollis nisl ac convallis nullam, urna et pharetra blandit vulputate nostra pellentesque, rhoncus elementum massa interdum inceptos integer enim. Porta eu augue tincidunt dapibus praesent posuere massa eget tortor, enim mollis dignissim congue ac sociis torquent metus, ante cras phasellus neque mi vehicula nisi curabitur.\n\n'
                    'Netus quisque porttitor conubia posuere vestibulum elementum lacinia penatibus fames consequat tristique, phasellus potenti sodales sociis primis donec quis diam dis erat. Leo per rhoncus malesuada mollis nibh felis inceptos habitant cubilia arcu sagittis eget, nulla natoque lacinia ultrices imperdiet pretium a congue dignissim fermentum vel. Dapibus id mus inceptos rhoncus in proin eget aenean ultricies, vel fringilla fermentum cubilia accumsan at pellentesque rutrum nostra, ante nam primis porttitor varius auctor himenaeos mollis. Pellentesque nisi congue ridiculus faucibus phasellus eleifend proin class, lobortis hac libero rutrum urna quis semper turpis nec, posuere lectus facilisi massa nam porttitor dis.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
