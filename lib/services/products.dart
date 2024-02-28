

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:e_commerce_flutter/model/product.dart';

Future<Product> fetchProduct() async {
  final response = await http.get(Uri.parse('https://fakestoreapi.com/products/1'));

  if(response.statusCode == 200) {
    return Product.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}