import 'package:e_commerce_flutter/model/product.dart';
import 'package:e_commerce_flutter/service/products.dart';
import 'package:e_commerce_flutter/widgets/product_details_table.dart';
import 'package:flutter/material.dart';

class ProductDetailsBuilder extends StatefulWidget {
  final int id;
  const ProductDetailsBuilder({super.key, required this.id});

  @override
  State<ProductDetailsBuilder> createState() => _ProductDetailsBuilderState();
}

class _ProductDetailsBuilderState extends State<ProductDetailsBuilder> {
  late Future<Product> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct(id: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Product>(
      future: futureProduct,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        } else {
          return ProductDetailsTable(item: snapshot.data!);
        }
      },
    );
  }
}
