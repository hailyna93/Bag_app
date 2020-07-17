import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product(
      {this.color,
      this.description,
      this.id,
      this.image,
      this.price,
      this.size,
      this.title});
}

List<Product> product = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "dummyText",
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "dummyText",
      image: "assets/images/bag_2.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "dummyText",
      image: "assets/images/bag_3.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "dummyText",
      image: "assets/images/bag_4.png",
      color: Color(0xFF3D82AE))
];
