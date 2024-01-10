import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class BookDetail extends StatefulWidget {
  const BookDetail({super.key});

  @override
  State<StatefulWidget> createState() {
    return BookDetailState();
  }
}

class BookDetailState extends State {
  @override
  Widget build(BuildContext context) {
    var bookId = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            globals.book_names[bookId].toString(),
            style: const TextStyle(
              fontSize: 24,
              color: Color(0xff69303f),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffF8CCA4),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(right: 12, top: 22),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(globals.images[bookId].toString()),
                      fit: BoxFit.fill),
                ),
                width: 240,
                height: 384,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                globals.book_names[bookId].toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Text("Yazar: ${globals.authors[bookId].toString()}"),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Text("Yayınevi: ${globals.publishers[bookId].toString()}"),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Text("Sayfa Sayısı: ${globals.book_pages[bookId].toString()}"),
            const Padding(padding: EdgeInsets.only(top: 16)),
            Text("Fiyat: ${globals.prices[bookId].toString()} ₺",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Padding(padding: EdgeInsets.only(top: 16)),
            Container(
              width: 200,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange[300]),
              child: TextButton(
                onPressed: () {
                  globals.favlist.add(globals.book_names[bookId].toString());
                },
                child: const Text(
                  "♥ Favorilere ekle",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 8)),
            Container(
              width: 300,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: TextButton(
                onPressed: () {
                  globals.cartlist.add(globals.book_names[bookId].toString());
                },
                child: const Text(
                  "Sepete Ekle",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
