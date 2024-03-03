import 'package:e_commerce_flutter/model/product.dart';
import 'package:e_commerce_flutter/service/products.dart';
import 'package:e_commerce_flutter/widgets/product_item.dart';
import 'package:flutter/material.dart';

class CategoryProductsBuilder extends StatefulWidget {
  const CategoryProductsBuilder({super.key});

  @override
  State<CategoryProductsBuilder> createState() =>
      _CategoryProductsBuilderState();
}

class _CategoryProductsBuilderState extends State<CategoryProductsBuilder> {
  late Future<List<Product>> futureCategoryProducts;

  @override
  void initState() {
    super.initState();
    futureCategoryProducts = fetchCategoryProducts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: futureCategoryProducts,
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
              final product = data[index];

              return ProductItem(product: product);
            },
          );
        }
      },
    );
  }
}
