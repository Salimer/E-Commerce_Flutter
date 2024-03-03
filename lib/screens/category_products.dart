import 'package:e_commerce_flutter/data/fake.dart';
import 'package:e_commerce_flutter/model/product.dart';
import 'package:e_commerce_flutter/service/products.dart';
import 'package:e_commerce_flutter/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Category Products'),
      ),
      body: FutureBuilder<List<Product>>(
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

            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final product = data[index];

                return ListTile(
                  title: Text(product.title),
                );
              },
            );
          }
        },
      ),
    );
  }
}


// GridView.count(
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         crossAxisCount: 2,
//         children: [
//           for (Product product in products)
//             ProductItem(
//               product: product,
//             )
//         ],
//       ),