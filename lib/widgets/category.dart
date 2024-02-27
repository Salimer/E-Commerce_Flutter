import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String categoryName;
  const Category({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: () {
                print('tapped');
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