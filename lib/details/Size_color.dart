import 'package:ecom/models/product.dart';
import 'package:flutter/material.dart';

class SizeAndColor extends StatelessWidget {
  const SizeAndColor({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("color"),
                  Row(
                    children: [
                      Dot(
                        color: Color(0xFF356C95),
                        isSelected: true,
                      ),
                      Dot(
                        color: Color(0xFFF8C078),
                      ),
                      Dot(
                        color: Color(0xFF356C95),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(
                      text: "Size\n",
                    ),
                    TextSpan(
                        text: "${product.size}",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(fontWeight: FontWeight.bold))
                  ])),
            )
          ],
        )
      ],
    );
  }
}

class Dot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const Dot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        right: 10,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
