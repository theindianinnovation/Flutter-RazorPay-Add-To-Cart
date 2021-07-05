import 'package:flutter/material.dart';
import 'package:flutter_cart_and_payment/controllers/payment_controller.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {

  final PaymentController paymentController=Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter RazoryPay'),
      ),
      body: Center(
        child:  ElevatedButton(
            onPressed: () {
              paymentController.dispatchPayment(20000, 'Indian Innovation','9876543210', "products", 'codestudio@gmail.com', 'Paytm');
            },
            child: Text('Total Payment : 200',
              style: TextStyle(fontSize: 20,),
            ))),
    );
  }
}
