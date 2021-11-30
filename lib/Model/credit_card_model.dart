class CreditCardModel {
  final String holderName;
  final String userName;
  final String cardNumber;
  final String expirationData;
  final String cvv;

  CreditCardModel({
    required this.holderName,
    required this.userName,
    required this.cardNumber,
    required this.expirationData,
    required this.cvv,
  });

  Map<String, dynamic> toMap() {
    return {
      'holderName': this.holderName,
      'userName': this.userName,
      'cardNumber': this.cardNumber,
      'expirationData': this.expirationData,
      'cvc': this.cvv,
    };
  }

  factory CreditCardModel.fromMap(Map<String, dynamic> map) {
    return CreditCardModel(
      holderName: map['holderName'] as String,
      userName: map['userName'] as String,
      cardNumber: map['cardNumber'] as String,
      expirationData: map['expirationData'] as String,
      cvv: map['cvc'] as String,
    );
  }
}
