import 'dart:ui';

import 'package:ecom/models/cartmodel.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Cart"),
      ),
      body: Column(
        children: [
          // _CartList(),
          Expanded(child: _CartList()),
          Divider(),
          _cart(),
        ],
      ),
    );
  }
}

class _cart extends StatelessWidget {
  const _cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "\$${_cart.totalPrice}",
            style: TextStyle(fontSize: 25),
          ),
          TextButton(
            onPressed: () {},
            child: ElevatedButton(
              child: Text("Buy now".toUpperCase()),
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                onPrimary: Colors.white,
                onSurface: Colors.grey,
                side: BorderSide(color: Colors.white),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    if (_cart.products.isEmpty) {
      return Container(
        width: 300.0,
        height: 500.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/EmptyCart.png"),
          ),
        ),
        child: Center(
          child: Text(
            "Cart Empty",
            style: TextStyle(fontSize: 30),
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: _cart.products.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: () {
              _cart.remove(_cart.products[index]);
              setState(() {});
            },
          ),
          title: Text("${_cart.products[index].title}"),
        ),
      );
    }
  }
}
