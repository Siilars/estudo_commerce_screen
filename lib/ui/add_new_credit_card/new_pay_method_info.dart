import 'package:flutter/material.dart';
import 'package:only_telinha/Model/credit_card_model.dart';
import 'package:only_telinha/Model/pay_method_key_model.dart';
import 'package:only_telinha/ui/add_new_credit_card/add_new_credit_card_controller.dart';
import 'package:only_telinha/ui/add_new_credit_card/new_credit_card.dart';
import 'package:only_telinha/ui/shop_payment.dart';

class AddNewCreditCardInfo extends StatefulWidget {
  const AddNewCreditCardInfo({Key? key}) : super(key: key);

  @override
  _AddNewCreditCardInfoState createState() => _AddNewCreditCardInfoState();
}

class _AddNewCreditCardInfoState extends State<AddNewCreditCardInfo> {
  TextEditingController cardController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController expireDataController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  NewCreditCardController newCreditController = NewCreditCardController();
  PayMethodValidatorKey validatorKey = PayMethodValidatorKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              key: validatorKey.cardKey,
              keyboardType: TextInputType.numberWithOptions(),
              maxLength: 16,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Card Number can\'t be empty";
                }
              },
              controller: cardController,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                labelText: "Card Number",
                border: UnderlineInputBorder(),
              ),
            ),
            TextFormField(
              key: validatorKey.cardHolderKey,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Card Holder can\'t be empty";
                }
              },
              controller: cardHolderController,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                labelText: "Card Holder",
                border: UnderlineInputBorder(),
              ),
            ),
            TextFormField(
              key: validatorKey.userNameKey,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Your Name can\'t be empty";
                }
              },
              keyboardType: TextInputType.text,
              controller: userNameController,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                labelText: "Your Name",
                border: UnderlineInputBorder(),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                    key: validatorKey.expireDataKey,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Expire Data can\'t be empty";
                      }
                    },
                    keyboardType: TextInputType.numberWithOptions(),
                    maxLength: 5,
                    controller: expireDataController,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      labelText: "Expire Data",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: TextFormField(
                    key: validatorKey.cvvKey,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Cvv can\'t be empty";
                      }
                    },
                    keyboardType: TextInputType.numberWithOptions(),
                    maxLength: 3,
                    controller: cvvController,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      labelText: "CVV",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () async {
                    CreditCardModel creditCard = CreditCardModel(
                      holderName: cardHolderController.text,
                      userName: userNameController.text,
                      cardNumber: cardController.text,
                      expirationData: expireDataController.text,
                      cvv: cvvController.text,
                    );
                    await newCreditController.addNewCreditCard(creditCard);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Complete",
                    style: TextStyle(fontSize: 25, color: Colors.white),
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
