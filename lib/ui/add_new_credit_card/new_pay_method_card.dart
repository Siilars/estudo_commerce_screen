import 'package:flutter/material.dart';

class NewPayMetCard extends StatelessWidget {
  const NewPayMetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/12/Gradient_builder_2.jpg?auto=format&q=60&w=1815&h=1815&fit=crop&crop=faces"),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 10, top: 50, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 500,
                        color: Colors.black12,
                        child: Text(
                          "Card Number",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Expiration Data",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Text(
                                "**/**",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            children: [
                              Text(
                                "Cvc",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Text(
                                "***",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
