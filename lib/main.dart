import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kitapistan/firebase_options.dart';
import 'package:kitapistan/screens/book_detail.dart';
import 'package:kitapistan/screens/ca_muzik.dart';
import 'package:kitapistan/screens/cart.dart';
import 'package:kitapistan/screens/cat_bilim.dart';
import 'package:kitapistan/screens/cat_cocuk.dart';
import 'package:kitapistan/screens/cat_edebiyat.dart';
import 'package:kitapistan/screens/cat_egitim.dart';
import 'package:kitapistan/screens/cat_felsefe.dart';
import 'package:kitapistan/screens/cat_gelisim.dart';
import 'package:kitapistan/screens/cat_psikoloji.dart';
import 'package:kitapistan/screens/cat_tarih.dart';
import 'package:kitapistan/screens/categories.dart';
import 'package:kitapistan/screens/cok_satanlar.dart';
import 'package:kitapistan/screens/favorites.dart';
import 'package:kitapistan/screens/homepage.dart';
import 'package:kitapistan/screens/main_layout.dart';
import 'package:kitapistan/screens/search.dart';
import 'package:kitapistan/screens/tum_kitaplar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitapistan',
      initialRoute: "/main_layout",
      home: const HomePage(),
      routes: {
        "/main_layout": (context) => const MainLayout(),
        "/homepage": (context) => const HomePage(),
        "/categories": (context) => const Categories(),
        "/book_detail": (context) => const BookDetail(),
        "/cok_satanlar": (context) => const CokSatanlar(),
        "/tum_kitaplar": (context) => const TumKitaplar(),
        "/categories/bilim": (context) => const Bilim(),
        "/categories/cocuk": (context) => const Cocuk(),
        "/categories/edebiyat": (context) => const Edebiyat(),
        "/categories/egitim": (context) => const Egitim(),
        "/categories/felsefe": (context) => const Felsefe(),
        "/categories/gelisim": (context) => const Gelisim(),
        "/categories/muzik": (context) => const Muzik(),
        "/categories/psikoloji": (context) => const Psikoloji(),
        "/categories/tarih": (context) => const Tarih(),
        "/favorites": (context) => Favorites(),
        "/cart": (context) => const Cart(),
        "/search": (context) => const Search(),
      },
    );
  }
}
