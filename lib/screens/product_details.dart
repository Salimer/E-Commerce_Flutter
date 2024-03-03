import 'package:e_commerce_flutter/widgets/future_builders/product_details.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final int id;
  const ProductDetails({super.key, required this.id});

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
      body: Center(
          child: SingleChildScrollView(child: ProductDetailsBuilder(id: id))),
    );
  }
}
