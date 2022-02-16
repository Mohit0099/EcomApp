import 'package:flutter/material.dart';

import 'details/details_screen.dart';
import 'models/product.dart';

class itemcart extends StatelessWidget {
  final Product product;
  final Function press;

  const itemcart({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    product: product,
                  ))),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 170,
                width: 160,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                    scale: 1.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "${product.title}",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Text(
                "\$${product.price}",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
