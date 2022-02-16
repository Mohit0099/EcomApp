import 'package:ecom/details/Size_color.dart';
import 'package:ecom/details/cart_page.dart';

import 'package:ecom/details/image_details.dart';
import 'package:ecom/models/cartmodel.dart';
import 'package:ecom/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 230),
                  height: 500,
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 10,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizeAndColor(product: product),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          product.description,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 25),
                            height: 50,
                            width: 58,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: Colors.blueGrey)),
                            child: IconButton(
                              icon: SvgPicture.asset(
                                "assets/icon/add_cart.svg",
                                color: Colors.blueGrey,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/cartpage');
                              },
                            ),
                          ),
                          _addToCart(
                            product,
                            products: product,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ImageDetails(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _addToCart extends StatefulWidget {
  final Product products;
  const _addToCart(
    Product product, {
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  State<_addToCart> createState() => _addToCartState();
}

class _addToCartState extends State<_addToCart> {
  bool isAdded = false;

  final _catalog = Product();
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        width: 150,
        child: ElevatedButton(
          child: Text("add to cart".toUpperCase()),
          onPressed: () => {
            _cart.catalog = _catalog,
            _cart.add(widget.products),
            Navigator.pushNamed(context, '/cartpage')
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey,
            onPrimary: Colors.white,
            onSurface: Colors.grey,
            side: BorderSide(color: Colors.white),
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
      ),
    );
  }
}
