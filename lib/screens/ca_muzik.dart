import 'package:flutter/material.dart';
import 'package:kitapistan/screens/book_detail.dart';
import 'globals.dart' as globals;

class Muzik extends StatefulWidget {
  const Muzik({super.key});

  @override
  State<StatefulWidget> createState() {
    return MuzikState();
  }
}

class MuzikState extends State {
  @override
  Widget build(BuildContext context) {
    int extraindex = 171;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Müzik",
            style: TextStyle(fontSize: 32, color: Color(0xff69303f)),
          ),
          backgroundColor: const Color(0xffF8CCA4),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              extraindex += 3;
              return Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      var tappedBook = index;
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
                                image: NetworkImage(globals.images[index]),
                                fit: BoxFit.fill),
                          ),
                          width: 120,
                          height: 192,
                        ),
                        Container(
                          width: 120,
                          height: 48,
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(globals.book_names[index],
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
                            "${globals.prices[index]} ₺",
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
                      var tappedBook = extraindex + 1;
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
                                image: NetworkImage(
                                    globals.images[extraindex + 1]),
                                fit: BoxFit.fill),
                          ),
                          width: 120,
                          height: 192,
                        ),
                        Container(
                          width: 120,
                          height: 48,
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(globals.book_names[extraindex + 1],
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
                            "${globals.prices[extraindex + 1]} ₺",
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
                      var tappedBook = extraindex + 2;
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
                                image: NetworkImage(
                                    globals.images[extraindex + 2]),
                                fit: BoxFit.fill),
                          ),
                          width: 120,
                          height: 192,
                        ),
                        Container(
                          width: 120,
                          height: 48,
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(globals.book_names[extraindex + 2],
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
                            "${globals.prices[extraindex + 2]} ₺",
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
