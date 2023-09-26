import 'package:golden_house_flutter_final_application/screens/categories.dart';
import 'package:golden_house_flutter_final_application/screens/categoryPage.dart';
import 'package:golden_house_flutter_final_application/screens/homePage.dart';
import 'package:golden_house_flutter_final_application/screens/loginScreen.dart';
import 'package:golden_house_flutter_final_application/screens/restaurant.dart';
import 'package:golden_house_flutter_final_application/screens/restaurantMenu.dart';
import 'package:golden_house_flutter_final_application/screens/signUpScreen.dart';
import 'package:golden_house_flutter_final_application/screens/utensils.dart';
import 'package:flutter/material.dart';
import 'package:golden_house_flutter_final_application/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Restaurant(),
    );
  }
}