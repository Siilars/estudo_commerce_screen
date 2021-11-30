import 'dart:convert';

import 'package:only_telinha/Model/credit_card_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'add_new_credit_card/add_new_credit_card_controller.dart';

class CreditCardController {
  Future<List<CreditCardModel>> getListCreditCard() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    final List<String> listaCartoes = _prefs.getStringList(LIST_CREDITCARD) ?? [];
    final List<CreditCardModel> listCreditCard = [];
    listaCartoes.forEach(
      (element) {
        final CreditCardModel creditCard = CreditCardModel.fromMap(jsonDecode(element));
        listCreditCard.add(creditCard);
      },
    );
    return listCreditCard;
  }
}
