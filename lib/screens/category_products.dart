import 'package:e_commerce_flutter/widgets/future_builders/category_products.dart';
import 'package:flutter/material.dart';

class CategoryProducts extends StatelessWidget {
  final String categoryName;
  const CategoryProducts({super.key, required this.categoryName});

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
        title: Text('$categoryName Products'),
      ),
      body: CategoryProductsBuilder(categoryName: categoryName),
    );
  }
}
