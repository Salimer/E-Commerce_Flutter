import 'package:e_commerce_flutter/model/product.dart';

const List categories = [
  "electronics",
  "jewelry",
  "men's clothing",
  "women's clothing"
];

const List<Product> products = [
  Product(
      id: 1,
      title: 'title1',
      price: 4432,
      category: 'category',
      description: 'description 1',
      image: 'image 2'),
  /*...*/
  Product(
      id: 30,
      title: 'title 2',
      price: 232,
      category: 'category 2',
      description: 'description',
      image: 'image')
];
