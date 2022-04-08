import 'package:ecom/Login/Sign_up.dart';
import 'package:ecom/Login/login.dart';
import 'package:ecom/details/cart_page.dart';
import 'package:ecom/homepage.dart';
import 'package:ecom/payment/my_google_pay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: const Home(),
      routes: {
        "/": (context) => SignUp(),
        "/signup": (context) => SignUp(),
        "/home": (context) => Home(),
        "/login": (context) => Login(),
        "/mygooglepay": (context) => MygooglePay(),
        "/drawer": (context) => Drawer(),
        "/cartpage": (context) => CartPage(),
      },
    );
  }
}
