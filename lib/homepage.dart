import 'package:ecom/details/details_screen.dart';
import 'package:ecom/models/product.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

import 'item_cart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            title: Text("Ecom"),
            leading: Icon(Icons.sort),
            actions: [
              IconButton(
                icon: SvgPicture.asset("assets/icon/cart.svg"),
                onPressed: () {
                  Navigator.pushNamed(context, '/cartpage');
                },
              ),
            ]),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 140,
                  aspectRatio: 20 / 5,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  autoPlay: true,
                ),
                items: images.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(item), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Container(
                padding: new EdgeInsets.only(top: 16.0),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Top Picks",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: GridView.builder(
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.75),
                      itemBuilder: (context, index) => itemcart(
                            product: products[index],
                            press: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          product: products[index],
                                        ))),
                          )))
            ],
          ),
        ),
      ),
    );
  }

  final List<String> images = [
    'assets/banner1.jpg',
    'assets/banner2.png',
    'assets/banner3.jpg',
    'assets/banner4.jpg',
  ];
}
