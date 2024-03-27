import 'package:e_commerce_flutter/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryIconWidget extends StatelessWidget {
  final String iconPath;
  final Color backgroundColor;
  final Color iconColor;
  const CategoryIconWidget(
      {super.key,
      required this.iconPath,
      this.backgroundColor = unTappedCategory, this.iconColor = categoryIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(3),
        padding: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconPath,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ));
  }
}
