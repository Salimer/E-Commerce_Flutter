import 'dart:async';

import 'package:flutter/material.dart';

class DiscountAdWidget extends StatefulWidget {
  const DiscountAdWidget({super.key});

  @override
  State<DiscountAdWidget> createState() => _DiscountAdWidgetState();
}

class _DiscountAdWidgetState extends State<DiscountAdWidget> {
  final colors = [Colors.red, Colors.yellow, Colors.purple];

  int index = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (_) {
      setState(() {
        if (index == colors.length - 1) {
          index = 0;
        } else {
          index++;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: Container(
        key: Key('${DateTime.now()}'),
        color: colors[index],
      ),
    );
  }
}
