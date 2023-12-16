import 'package:beer_app/model/beer_type.dart';
import 'package:beer_app/widgets/api.dart';
import 'package:beer_app/widgets/info_widget_1.dart';
import 'package:beer_app/widgets/info_widget_2.dart';
import 'package:beer_app/widgets/info_widget_3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    /*required this.beerList*/
  });
  // final beerList;

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
        return ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.all(14),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                        child: Text(
                          "Categoria",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          InfoWidget_1(beer: beerList[1]),
                          const SizedBox(width: 12),
                          InfoWidget_1(beer: beerList[2]),
                          const SizedBox(width: 12),
                        ],
                      )

//POR ALGUNA RAZON PETA AL CAMBIAR EL ROW Y SE CONGELA EN EL ESTADO LOADING...

                      // ListView.builder(
                      //   scrollDirection: Axis.horizontal,
                      //   itemCount: 10, //beerList.length,
                      //   itemBuilder: (BuildContext context, int index) {
                      //     return InfoWidget_1(beer: beerList[index]);
                      //   },
                      // )
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 226, 78, 32),
              thickness: 6,
            ),
            Padding(
              padding: EdgeInsetsDirectional.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: InfoWidget_3(beer: beerList[4]),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 226, 78, 32),
              thickness: 6,
            ),
            Padding(
              padding: EdgeInsetsDirectional.all(14),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                        child: Text(
                          "Favoritos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          InfoWidget_2(beer: beerList[10]),
                          const SizedBox(width: 12),
                          InfoWidget_2(beer: beerList[8]),
                          const SizedBox(width: 12),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
