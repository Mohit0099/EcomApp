import 'package:ecom/details/cart_page.dart';
import 'package:ecom/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: const Home(),
      routes: {
        "/": (context) => Home(),
        "/cartpage": (context) => CartPage(),
      },
    );
  }
}
