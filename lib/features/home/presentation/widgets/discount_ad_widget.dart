import 'dart:async';
import 'package:e_commerce_flutter/core/constants/constants.dart';
import 'package:e_commerce_flutter/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscountAdWidget extends StatefulWidget {
  const DiscountAdWidget({super.key});

  @override
  State<DiscountAdWidget> createState() => _DiscountAdWidgetState();
}

class _DiscountAdWidgetState extends State<DiscountAdWidget> {
  final colors = [Colors.red, Colors.yellow, Colors.purple];

  Timer? _timer;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (_) {
      setState(() {
        if (index == products.length - 1) {
          index = 0;
        } else {
          index++;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Stack(
                key: Key('${DateTime.now()}'),
                fit: StackFit.expand,
                children: [
                  AspectRatio(
                    aspectRatio: 3 / 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Assets.images.girl.image(
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(products[index].category))
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Transform(
              transform: Matrix4.rotationZ(-0.34),
              alignment: Alignment.center,
              child: SvgPicture.asset(Assets.icons.discount, width: 50),
            ),
          )
        ],
      ),
    );
  }
}
