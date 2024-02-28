import 'package:flutter/material.dart';

class ProductDetailsTable extends StatelessWidget {
  const ProductDetailsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Table(
          border: TableBorder.all(
            color: Colors.grey,
          ),
          children: [
            TableRow(
              children: [
                const TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Image'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Title'),
                        Text('Description'),
                        Text('Category'),
                        Text('Price'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.shopping_cart),
                              onPressed: () {
                                print('tapped');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
