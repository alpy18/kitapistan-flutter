import 'package:flutter/material.dart';
import 'package:kitapistan/screens/cart.dart';
import 'package:kitapistan/screens/categories.dart';
import 'package:kitapistan/screens/favorites.dart';
import 'package:kitapistan/screens/homepage.dart';
import 'package:kitapistan/screens/search.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final _homepage = GlobalKey<NavigatorState>();
  final _categories = GlobalKey<NavigatorState>();
  final _cart = GlobalKey<NavigatorState>();
  final _search = GlobalKey<NavigatorState>();
  final _favorites = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: <Widget>[
        Navigator(
          key: _homepage,
          onGenerateRoute: (route) => MaterialPageRoute(
            settings: route,
            builder: (context) => const HomePage(),
          ),
        ),
        Navigator(
          key: _categories,
          onGenerateRoute: (route) => MaterialPageRoute(
            settings: route,
            builder: (context) => const Categories(),
          ),
        ),
        Navigator(
          key: _search,
          onGenerateRoute: (route) => MaterialPageRoute(
            settings: route,
            builder: (context) => const Search(),
          ),
        ),
        Navigator(
          key: _favorites,
          onGenerateRoute: (route) => MaterialPageRoute(
            settings: route,
            builder: (context) => const Favorites(),
          ),
        ),
        Navigator(
          key: _cart,
          onGenerateRoute: (route) => MaterialPageRoute(
            settings: route,
            builder: (context) => const Cart(),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          selectedItemColor: const Color(0xffba1010),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "categories",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "favorites"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "cart")
          ]),
    );
  }
}
