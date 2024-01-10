import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<StatefulWidget> createState() {
    return CartState();
  }
}

class CartState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sepetim",
          style: TextStyle(fontSize: 32, color: Color(0xff69303f)),
        ),
        backgroundColor: const Color(0xffF8CCA4),
      ),
      body: ListView.builder(
        itemCount: globals.cartlist.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == globals.cartlist.length) {
            return satinAl();
          } else {
            var ind = globals.book_names.indexOf(globals.cartlist[index]);
            return Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12, top: 22),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(globals.images[ind].toString()),
                          fit: BoxFit.fill),
                    ),
                    width: 120,
                    height: 192,
                  ),
                  SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        Text(
                          globals.book_names[ind].toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 8)),
                        Text(
                          "${globals.prices[ind].toString()} ₺",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 14)),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Kaldır",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget satinAl() {
    return Container(
      width: 100,
      height: 70,
      margin: const EdgeInsets.only(top: 170),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green),
      child: const TextButton(
        onPressed: null,
        child: Text(
          "Ödemeye Geç",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
