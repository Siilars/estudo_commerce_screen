import 'dart:convert';

import 'package:only_telinha/Model/credit_card_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const LIST_CREDITCARD = 'LIST_CREDITCARD';

class NewCreditCardController {
  addNewCreditCard(CreditCardModel creditCard) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    final List<String> listaCartoes = _prefs.getStringList(LIST_CREDITCARD) ?? [];
    final creditCardString = jsonEncode(creditCard.toMap());
    listaCartoes.add(creditCardString);
    _prefs.setStringList(LIST_CREDITCARD, listaCartoes);
  }
}
