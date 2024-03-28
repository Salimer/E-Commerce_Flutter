import 'package:e_commerce_flutter/core/constants/constants.dart';
import 'package:e_commerce_flutter/core/methods/methods.dart';
import 'package:e_commerce_flutter/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectedCategoryIconWidget(),
                CategoryIconWidget(iconPath: Assets.icons.notificationsIcon),
                CategoryIconWidget(iconPath: Assets.icons.notificationsIcon),
                CategoryIconWidget(iconPath: Assets.icons.notificationsIcon)
              ],
            ),
            DiscountAdWidget()
          ],
        ),
      ),
    );
  }
}
