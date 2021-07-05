import 'package:flutter/material.dart';
import 'package:flutter_cart_and_payment/controllers/CartController.dart';
import 'package:flutter_cart_and_payment/custom_widgets/cart_item.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {

final CartController cartController=Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Add Item To Cart"),),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ListView(
              shrinkWrap: true,
              children: new List.generate(
                  5,
                      (i) => CartItem(
                    title: "Product #$i",
                    price: 50,
                  ))),
          ElevatedButton(
              onPressed: () {
              },
              child: Obx(() => Text('Total Payment : '+
                  cartController.total.value.toString(),
                style: TextStyle(fontSize: 20, color: Colors.white),
              )))
        ]),
      ),
    );
  }
}
