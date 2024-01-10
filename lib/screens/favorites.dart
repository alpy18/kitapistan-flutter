import 'package:flutter/material.dart';
import 'package:kitapistan/screens/book_detail.dart';
import 'globals.dart' as globals;

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<StatefulWidget> createState() {
    return FavoritesState();
  }
}

class FavoritesState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Favoriler",
            style: TextStyle(fontSize: 32, color: Color(0xff69303f)),
          ),
          backgroundColor: const Color(0xffF8CCA4),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: ListView.builder(
            itemCount: globals.favlist.length,
            itemBuilder: (BuildContext context, int index) {
              var ind = globals.book_names.indexOf(globals.favlist[index]);
              return Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      var tappedBook = ind;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookDetail(),
                            settings: RouteSettings(arguments: tappedBook)),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(globals.images[ind]),
                                fit: BoxFit.fill),
                          ),
                          width: 120,
                          height: 192,
                        ),
                        Container(
                          width: 120,
                          height: 48,
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(globals.book_names[ind],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: Text(
                            "${globals.prices[ind]} ₺",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB14141)),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      var tappedBook = ind + 1;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookDetail(),
                            settings: RouteSettings(arguments: tappedBook)),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(globals.images[ind + 1]),
                                fit: BoxFit.fill),
                          ),
                          width: 120,
                          height: 192,
                        ),
                        Container(
                          width: 120,
                          height: 48,
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(globals.book_names[ind + 1],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: Text(
                            "${globals.prices[ind + 1]} ₺",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB14141)),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      var tappedBook = ind + 2;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookDetail(),
                            settings: RouteSettings(arguments: tappedBook)),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(globals.images[ind + 2]),
                                fit: BoxFit.fill),
                          ),
                          width: 120,
                          height: 192,
                        ),
                        Container(
                          width: 120,
                          height: 48,
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(globals.book_names[ind + 2],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: Text(
                            "${globals.prices[ind + 2]} ₺",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB14141)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
