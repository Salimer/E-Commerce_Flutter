import 'package:e_commerce_flutter/model/product.dart';
import 'package:e_commerce_flutter/service/products.dart';
import 'package:e_commerce_flutter/widgets/future_builders/category_products.dart';
import 'package:flutter/material.dart';

class CategoryProducts extends StatefulWidget {
  const CategoryProducts({super.key});

  @override
  State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  late Future<List<Product>> futureCategoryProducts;

  @override
  void initState() {
    super.initState();
    futureCategoryProducts = fetchCategoryProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Category Products'),
      ),
      body: const CategoryProductsBuilder()
    );
  }
}

