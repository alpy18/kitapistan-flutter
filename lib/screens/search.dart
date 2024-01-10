import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Arama",
            style: TextStyle(fontSize: 32, color: Color(0xff69303f)),
          ),
          backgroundColor: const Color(0xffF8CCA4),
        ),
        body: null);
  }
}
