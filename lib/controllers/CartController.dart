import 'package:get/get.dart';

class CartController extends GetxController{

  var total=0.obs;
  void increment(int price)=>total.value+=price;
  void decrement(int price)=>total.value-=price;

}