import 'package:flutter/material.dart';

class Product {
  final String image, title, description, size;
  final int price, id;

  Product({
    this.id = 1,
    this.image = "image",
    this.title = "title",
    this.price = 2,
    this.description = "des",
    this.size = "X",
  });
  Product getById(int id) =>
      products.firstWhere((element) => element.id == id, orElse: null);

  Product getByPosition(int pos) => products[pos];
}

List<Product> products = [
  Product(
    id: 1,
    title: "formal Dress",
    price: 204,
    size: "M",
    description: dummyText,
    image: "assets/images/cloth2.png",
  ),
  Product(
    id: 2,
    title: "Party Dress",
    price: 334,
    size: "X",
    description: dummyText,
    image: "assets/images/cloth6.jpeg",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 334,
    size: "L",
    description: dummyText,
    image: "assets/images/cloth7.jpeg",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 934,
    size: "XL",
    description: dummyText,
    image: "assets/images/cloth2.png",
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 7934,
    size: "XXL",
    description: dummyText,
    image: "assets/images/cloth7.jpeg",
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 34,
    size: "M",
    description: dummyText,
    image: "assets/images/cloth6.jpeg",
  ),
  Product(
    id: 1,
    title: "formal Dress",
    price: 204,
    size: "M",
    description: dummyText,
    image: "assets/images/cloth2.png",
  ),
  Product(
    id: 2,
    title: "Party Dress",
    price: 334,
    size: "X",
    description: dummyText,
    image: "assets/images/cloth6.jpeg",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 334,
    size: "L",
    description: dummyText,
    image: "assets/images/cloth7.jpeg",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 934,
    size: "XL",
    description: dummyText,
    image: "assets/images/cloth2.png",
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 7934,
    size: "XXL",
    description: dummyText,
    image: "assets/images/cloth7.jpeg",
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 34,
    size: "M",
    description: dummyText,
    image: "assets/images/cloth6.jpeg",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
