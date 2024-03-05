import 'package:e_commerce_flutter/service/products.dart';
import 'package:e_commerce_flutter/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesBuilder extends StatefulWidget {
  const CategoriesBuilder({super.key});

  @override
  State<CategoriesBuilder> createState() => _CategoriesBuilderState();
}

class _CategoriesBuilderState extends State<CategoriesBuilder> {
  late Future<List<String>> futureCategories;

  @override
  void initState() {
    super.initState();
    futureCategories = fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: futureCategories,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final data = snapshot.data!;

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              final category = data[index];

              return CategoryItem(categoryName: category);
            },
          );
        }
      },
    );
  }
}
