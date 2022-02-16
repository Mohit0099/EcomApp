import 'package:ecom/models/product.dart';
import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Womem Faashions Dress",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              SizedBox(
                width: 65,
              ),
              Expanded(
                  child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  height: 250,
                ),
              ))
            ],
          )

        
        ],
      ),
    );
  }
}
