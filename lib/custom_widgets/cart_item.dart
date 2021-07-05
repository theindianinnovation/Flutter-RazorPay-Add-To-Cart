import 'package:flutter/material.dart';
import 'package:flutter_cart_and_payment/controllers/CartController.dart';
import 'package:get/get.dart';

class CartItem extends StatefulWidget {
  CartItem({@required this.title, @required this.price});

  final String title;
  final int price;

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  final CartController _CartController = Get.find();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: new Text(
          widget.title,
          style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
        ),
        trailing: SizedBox(
            width: 200,
            child: Wrap(alignment: WrapAlignment.spaceBetween, children: [
              Row(
                children: <Widget>[
                  counter != 0
                      ? new IconButton(
                          icon: new Icon(
                            Icons.remove,
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            setState(() {
                              counter--;
                              _CartController.decrement(widget.price);
                            });
                          })
                      : new Container(),
                  new Text(" $counter", style: TextStyle(fontSize: 20),),
                  new IconButton(
                      icon: new Icon(Icons.add,
                          color: Theme.of(context).primaryColor),
                      onPressed: () {
                        setState(() {
                          counter++;
                          _CartController.increment(widget.price);
                        });
                      })
                ],
              ),
            ])),
      ),
    );
  }
}
