import 'package:e_commerce_flutter/model/product.dart';
import 'package:e_commerce_flutter/services/products.dart';
import 'package:e_commerce_flutter/widgets/future_builders/product_details.dart';
import 'package:e_commerce_flutter/widgets/product_details_table.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late Future<Product> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Product Details'),
      ),
      body: const ProductDetailsBuilder(),
    );
  }
}
