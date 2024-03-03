import 'package:e_commerce_flutter/model/product.dart';
import 'package:e_commerce_flutter/service/products.dart';
import 'package:e_commerce_flutter/widgets/product_details_table.dart';
import 'package:flutter/material.dart';

class ProductDetailsBuilder extends StatefulWidget {
  const ProductDetailsBuilder({super.key});

  @override
  State<ProductDetailsBuilder> createState() => _ProductDetailsBuilderState();
}

class _ProductDetailsBuilderState extends State<ProductDetailsBuilder> {
  late Future<Product> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Product>(
      future: futureProduct,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ProductDetailsTable(item: snapshot.data!);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
