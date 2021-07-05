import 'package:flutter/material.dart';
import 'package:flutter_cart_and_payment/screen/cart_screen.dart';
import 'package:flutter_cart_and_payment/screen/payment_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

const MaterialColor kPrimaryColor = const MaterialColor(
  0xFF311B92,
const <int, Color>{
50: const Color(0xFF311B92),
100: const Color(0xFF311B92),
200: const Color(0xFF311B92),
300: const Color(0xFF311B92),
400: const Color(0xFF311B92),
500: const Color(0xFF311B92),
600: const Color(0xFF311B92),
700: const Color(0xFF311B92),
800: const Color(0xFF311B92),
900: const Color(0xFF311B92),
},
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home:CartScreen(),
    );
  }
}
