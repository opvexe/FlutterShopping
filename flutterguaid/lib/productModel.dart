import 'package:flutter/material.dart';

//MARK: 数据Model

class ProductModel {
  String name;
  String image;
  double rating;
  String price;
  String brand;
  String description;
  int totalReviews;
  List<String> sizes;
  List<ProductColor> colors;
  int quantity = 0;

  ProductModel(
      {this.name,
      this.image,
      this.rating,
      this.price,
      this.brand,
      this.description,
      this.totalReviews,
      this.sizes,
      this.colors,
      this.quantity});
}

class ProductColor {
  final String colorName;
  final MaterialColor color;
  ProductColor({this.colorName, this.color});
}
