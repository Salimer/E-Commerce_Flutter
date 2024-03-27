import 'package:e_commerce_flutter/core/config/config.dart';
import 'package:e_commerce_flutter/features/home/presentation/views/views.dart';
import 'package:flutter/material.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Salim's Store",
      theme: AppTheme.lightTheme,
      home: HomeView(),
    );
  }
}
