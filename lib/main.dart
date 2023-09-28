import 'package:golden_house_flutter_final_application/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:golden_house_flutter_final_application/screens/mealCollapsed.dart';
import 'package:golden_house_flutter_final_application/screens/utensilsProduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UtensilsProduct(),
    );
  }
}