import 'package:flutter/material.dart';

class ShopCard extends StatefulWidget {
  final String productName;

  final List<Color> productColor;

  final List<String> productSize;

  final double productPrice;

  const ShopCard({
    Key? key,
    required this.productName,
    required this.productColor,
    required this.productSize,
    required this.productPrice,
  }) : super(key: key);

  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  int counter = 0;
  late Color colorController = widget.productColor[0];
  int indexSizeSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Row(
          children: [
            Container(
              width: 130,
              height: 150,
              decoration: BoxDecoration(color: colorController, borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                ),
                Row(
                  children: [
                    Text("Color"),
                    SizedBox(
                      width: 12,
                      height: 50,
                    ),
                    ...List.generate(widget.productColor.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            colorController = widget.productColor[index];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(color: widget.productColor[index], borderRadius: BorderRadius.all(Radius.circular(20))),
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.only(right: 10),
                        ),
                      );
                    })
                  ],
                ),
                Row(
                  children: [
                    Text("Size"),
                    SizedBox(
                      width: 20,
                    ),
                    ...List.generate(widget.productSize.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            indexSizeSelected = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: indexSizeSelected == index ? Colors.lightBlueAccent : Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: indexSizeSelected == index ? Colors.lightBlueAccent : Colors.white)),
                          width: 20,
                          height: 20,
                          child: Text(widget.productSize[index]),
                          margin: EdgeInsets.only(right: 10),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$ ${widget.productPrice.toString().replaceAll(".", ",")}",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
                Text(
                  "$counter",
                  style: TextStyle(fontSize: 30),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
