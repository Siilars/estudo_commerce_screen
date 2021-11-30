import 'package:only_telinha/Model/payment_method_model.dart';

class PaymentController {
  List<PaymentMethodModel> paymentMethodList() {
    PaymentMethodModel googlePay = PaymentMethodModel(
      paymentName: 'Google Pay',
      paymentLogo: "https://i.pinimg.com/originals/22/a4/51/22a451e813d96889d65b7d4fe6f75e23.png",
    );
    PaymentMethodModel visaCard = PaymentMethodModel(
      paymentName: "Visa Credit Card",
      paymentLogo: "https://w7.pngwing.com/pngs/371/4/png-transparent-visa-debit-card-credit-card-logo-mastercard-visa-text-trademark-logo.png",
    );
    PaymentMethodModel masterCard = PaymentMethodModel(
      paymentName: "Master Card",
      paymentLogo: "https://w7.pngwing.com/pngs/397/885/png-transparent-logo-mastercard-product-font-mastercard-text-orange-logo.png",
    );
    PaymentMethodModel eloCard = PaymentMethodModel(
      paymentName: "Elo",
      paymentLogo: "https://logospng.org/download/cartao-elo/logo-cartao-elo-preto-512.png",
    );
    PaymentMethodModel localDebit = PaymentMethodModel(
      paymentName: "Local Debit",
      paymentLogo: "https://www.pngkey.com/png/detail/26-263270_generic-credit-card-icon-png-download-credit-card.png",
    );

    List<PaymentMethodModel> listPayment = [googlePay, visaCard, masterCard, eloCard, localDebit];

    return listPayment;
  }
}
