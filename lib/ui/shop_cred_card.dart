import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:only_telinha/Model/credit_card_model.dart';
import 'package:only_telinha/ui/add_new_credit_card/new_pay_method_info.dart';

class CredCard extends StatelessWidget {
  final CreditCardModel creditCard;

  const CredCard({
    Key? key,
    required this.creditCard,
  }) : super(key: key);

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
                    image: NetworkImage("https://i.stack.imgur.com/swv0W.jpg"),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        creditCard.holderName,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        creditCard.userName,
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        creditCard.cardNumber,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
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
                                creditCard.expirationData,
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
                                creditCard.cvv,
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
            ),
          ],
        ),
      ),
    );
  }
}
