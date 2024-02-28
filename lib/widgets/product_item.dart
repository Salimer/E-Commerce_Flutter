import 'package:e_commerce_flutter/data/fake.dart';
import 'package:e_commerce_flutter/screens/product_details.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tapped');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            product.title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
