import 'package:e_commerce_flutter/screens/category_products.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  const CategoryItem({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryProducts(categoryName: categoryName),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            categoryName,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
