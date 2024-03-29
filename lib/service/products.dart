import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:e_commerce_flutter/model/product.dart';

Future<Product> fetchProduct({required int id}) async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/products/$id'));

  if (response.statusCode == 200) {
    return Product.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}

Future<List<Product>> fetchCategoryProducts(
    {required String categoryName}) async {
  final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));

  if (response.statusCode == 200) {
    final List<dynamic> productListData =
        jsonDecode(response.body) as List<dynamic>;

    return productListData
        .map((productData) => Product.fromJson(productData))
        .toList();
  } else {
    throw Exception('Failed to load products');
  }
}

Future<List<String>> fetchCategories() async {
  final response = await http.get(
    Uri.parse('https://fakestoreapi.com/products/categories'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> categoriesListData =
        jsonDecode(response.body) as List<dynamic>;

    return categoriesListData.cast<String>();
  } else {
    throw Exception('Failed to load categories');
  }
}
