import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:only_telinha/ui/shop_card.dart';
import 'package:only_telinha/ui/shop_final.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart_outlined),
              ),
            ],
          ),
        ],
        title: Text("Only Telinha Shopping"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                "My Cart",
                style: TextStyle(fontSize: 35, color: Colors.blueGrey),
              ),
            ),
            ShopCard(
              productName: "Man Suit",
              productColor: [Colors.black, Colors.blue, Colors.green, Colors.purple],
              productSize: ["P", "M", "G"],
              productPrice: 37.97,
            ),
            ShopCard(
              productName: "Woman Suit",
              productColor: [Colors.black, Colors.deepOrangeAccent],
              productSize: ["P", "M", "G"],
              productPrice: 58.97,
            ),
            ShopFinal(
              productSubTotal: 91.94,
              productDiscount: 5,
              productShipping: 20,
              productTotal: 111.24,
            )
          ],
        ),
      ),
    );
  }
}
