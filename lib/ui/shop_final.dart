import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:only_telinha/ui/shop_payment.dart';

class ShopFinal extends StatefulWidget {
  final double productSubTotal;

  final double productDiscount;

  final double productShipping;

  final double productTotal;

  const ShopFinal({Key? key, required this.productSubTotal, required this.productDiscount, required this.productShipping, required this.productTotal}) : super(key: key);

  @override
  _ShopFinalState createState() => _ShopFinalState();
}

class _ShopFinalState extends State<ShopFinal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 20,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("\$${widget.productSubTotal}", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Discount", style: TextStyle(fontSize: 20)),
                  Text("\$${widget.productDiscount}", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Shipping", style: TextStyle(fontSize: 20)),
                  Text("\$${widget.productShipping}", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Total", style: TextStyle(fontSize: 20)),
                  Text("\$${widget.productTotal}", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: context => ))
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => ShopPayment()),
                    );
                  },
                  child: Text(
                    "Buy",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
