import 'package:flutter/material.dart';
import 'package:only_telinha/Model/payment_method_model.dart';
import 'package:only_telinha/ui/add_new_credit_card/new_credit_card.dart';
import 'package:only_telinha/ui/payment_method_controller.dart';

class PaymentMethods extends StatefulWidget {
  final Function callBack;

  const PaymentMethods({Key? key, required this.callBack}) : super(key: key);

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  PaymentController paymentController = PaymentController();
  List<PaymentMethodModel> paymentList = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 20,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Add a new Payment Method",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  separatorBuilder: (BuildContext context, int index) => Divider(
                        height: 10,
                        color: Colors.black,
                      ),
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: paymentController.paymentMethodList().length,
                  itemBuilder: (content, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 20),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.network(paymentController.paymentMethodList()[index].paymentLogo),
                          ),
                        ),
                        Text(
                          paymentController.paymentMethodList()[index].paymentName,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) => NewCreditCardPage()),
                              );
                              widget.callBack.call();
                            },
                            icon: Icon(Icons.add)),
                        Divider(
                          height: 0,
                          color: Colors.black,
                        ),
                      ],
                    );
                  }),
              Divider(
                height: 0,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: context => ))
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (BuildContext context) => ShopPayment()),
                  },
                  child: Text(
                    "Complete",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
