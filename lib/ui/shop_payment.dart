import 'package:flutter/material.dart';
import 'package:only_telinha/Model/credit_card_model.dart';
import 'package:only_telinha/ui/add_new_credit_card/new_pay_method_info.dart';
import 'package:only_telinha/ui/credit_card_controller.dart';
import 'package:only_telinha/ui/payment_methods.dart';
import 'package:only_telinha/ui/shop_cred_card.dart';

class ShopPayment extends StatefulWidget {
  const ShopPayment({Key? key}) : super(key: key);

  @override
  _ShopPaymentState createState() => _ShopPaymentState();
}

class _ShopPaymentState extends State<ShopPayment> {
  CreditCardController creditCardController = CreditCardController();
  List<CreditCardModel> creditCardList = [];

  void getListCreditCard() async {
    creditCardList.clear();
    final list = await creditCardController.getListCreditCard();
    setState(() {
      creditCardList.addAll(list);
    });
  }

  @override
  void initState() {
    super.initState();
    getListCreditCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        title: Text(
          "Payment Options",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280,
                child: PageView.builder(
                    itemBuilder: (context, index) {
                      return CredCard(creditCard: creditCardList[index]);
                    },
                    itemCount: creditCardList.length),
              ),
              PaymentMethods(callBack: () {
                getListCreditCard();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
