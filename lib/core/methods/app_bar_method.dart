import 'package:e_commerce_flutter/core/config/config.dart';
import 'package:e_commerce_flutter/core/constants/constants.dart';
import 'package:e_commerce_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBarMethod() {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: SvgPicture.asset(Assets.icons.drawerIcon,
        colorFilter: ColorFilter.mode(deepBrown, BlendMode.srcIn),),
      ),
    ),
    title: Text("Salim's Store", style: TextStyles.bold20),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          Assets.icons.notificationsIcon,
          
          colorFilter: ColorFilter.mode(deepBrown, BlendMode.srcIn),
          width: 30,
        ),
      )
    ],
  );
}
