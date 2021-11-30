import 'package:flutter/material.dart';
import 'package:only_telinha/ui/add_new_credit_card/new_pay_method_card.dart';
import 'package:only_telinha/ui/add_new_credit_card/new_pay_method_info.dart';

class NewCreditCardPage extends StatelessWidget {
  const NewCreditCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        title: Text(
          "Add Credit Card",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NewPayMetCard(),
              SizedBox(
                height: 15,
              ),
              AddNewCreditCardInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
