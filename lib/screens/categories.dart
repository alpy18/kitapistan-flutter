import 'package:flutter/material.dart';
import 'package:kitapistan/screens/cat_muzik.dart';
import 'package:kitapistan/screens/cat_bilim.dart';
import 'package:kitapistan/screens/cat_cocuk.dart';
import 'package:kitapistan/screens/cat_edebiyat.dart';
import 'package:kitapistan/screens/cat_egitim.dart';
import 'package:kitapistan/screens/cat_felsefe.dart';
import 'package:kitapistan/screens/cat_gelisim.dart';
import 'package:kitapistan/screens/cat_psikoloji.dart';
import 'package:kitapistan/screens/cat_tarih.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<StatefulWidget> createState() {
    return CategoriesState();
  }
}

class CategoriesState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kategoriler",
          style: TextStyle(fontSize: 32, color: Color(0xff69303f)),
        ),
        backgroundColor: const Color(0xffF8CCA4),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
        child: ListView.separated(
          itemCount: categories.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Bilim()),
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cocuk()),
                  );
                } else if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Edebiyat()),
                  );
                } else if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Egitim()),
                  );
                } else if (index == 4) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Felsefe()),
                  );
                } else if (index == 5) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Gelisim()),
                  );
                } else if (index == 6) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Muzik()),
                  );
                } else if (index == 7) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Psikoloji()),
                  );
                } else if (index == 8) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tarih()),
                  );
                }
              },
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                title: Text(
                  categories[index],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

var categories = [
  "Bilim ve Mühendislik",
  "Çocuk Kitapları",
  "Edebiyat",
  "Eğitim",
  "Felsefe",
  "Kişisel Gelişim",
  "Müzik",
  "Psikoloji",
  "Tarih"
];
