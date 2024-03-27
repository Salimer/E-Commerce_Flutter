import 'package:e_commerce_flutter/core/constants/constants.dart';
import 'package:e_commerce_flutter/features/home/presentation/widgets/widgets.dart';
import 'package:e_commerce_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SelectedCategoryIconWidget extends StatelessWidget {
  const SelectedCategoryIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: tappedCategory, width: 2),
        shape: BoxShape.circle,
      ),
      child: CategoryIconWidget(
        iconPath: Assets.icons.notificationsIcon,
        backgroundColor: tappedCategory,
        iconColor: Colors.white,
      ),
    );
  }
}
