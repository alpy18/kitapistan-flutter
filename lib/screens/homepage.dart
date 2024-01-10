import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:kitapistan/screens/book_detail.dart';
import 'package:kitapistan/screens/cok_satanlar.dart';
import 'package:kitapistan/screens/tum_kitaplar.dart';
import 'globals.dart' as globals;

final ref = FirebaseDatabase.instance.ref("books");

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Kitapistan",
            style: TextStyle(fontSize: 32, color: Color(0xff69303f)),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffF8CCA4)),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 12.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CokSatanlar()),
                );
              },
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Çok Satanlar",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              height: 287,
              child: FirebaseAnimatedList(
                scrollDirection: Axis.horizontal,
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  return GestureDetector(
                    onTap: () {
                      var tappedBook =
                          int.parse(snapshot.child("id").value.toString());
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
                                    snapshot.child("image").value.toString()),
                                fit: BoxFit.fill),
                          ),
                          width: 120,
                          height: 192,
                        ),
                        Container(
                          width: 120,
                          height: 48,
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                              snapshot.child("book_name").value.toString(),
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "${snapshot.child("price").value} ₺",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB14141)),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TumKitaplar()),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Tüm Kitaplar",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              height: 287,
              child: FirebaseAnimatedList(
                scrollDirection: Axis.horizontal,
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  var bookName = snapshot.child("book_name").value.toString();
                  var image = snapshot.child("image").value.toString();
                  var author = snapshot.child("author").value.toString();
                  var publisher = snapshot.child("publisher").value.toString();
                  var description =
                      snapshot.child("description").value.toString();
                  var pages = snapshot.child("pages").value.toString();
                  var category = snapshot.child("category").value.toString();
                  var price = snapshot.child("price").value.toString();
                  if (!globals.book_names.contains(bookName)) {
                    globals.book_names.add(bookName);
                    globals.images.add(image);
                    globals.authors.add(author);
                    globals.publishers.add(publisher);
                    globals.descriptions.add(description);
                    globals.categories.add(category);
                    globals.book_pages.add(pages);
                    globals.prices.add(price);
                  }

                  return GestureDetector(
                    onTap: () {
                      var tappedBook =
                          int.parse(snapshot.child("id").value.toString());
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
                                    snapshot.child("image").value.toString()),
                                fit: BoxFit.fill),
                          ),
                          width: 120,
                          height: 192,
                        ),
                        Container(
                          width: 120,
                          height: 48,
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                              snapshot.child("book_name").value.toString(),
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              softWrap: true,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "${snapshot.child("price").value} ₺",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB14141)),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var covers = [
  "assets/nutuk.png",
  "assets/kucukprens.jpg",
  "assets/hayvanciftligi.jpg",
  "assets/nutuk.png",
  "assets/kucukprens.jpg",
  "assets/hayvanciftligi.jpg"
];
var titles = [
  "Nutuk",
  "Küçük Prens",
  "Hayvan Çiftiği",
  "Nutuk",
  "Küçük Prens",
  "Hayvan Çiftiği"
];
var prices = ["44,90₺", "29,90₺", "32,90₺", "44,90₺", "29,90₺", "32,90₺"];
