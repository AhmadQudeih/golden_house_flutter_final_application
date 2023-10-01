import 'package:flutter/material.dart';
import 'package:golden_house_flutter_final_application/screens/contatUs.dart';
import 'package:golden_house_flutter_final_application/screens/deliverAddress.dart';
import 'package:golden_house_flutter_final_application/screens/editInfo.dart';
import 'package:golden_house_flutter_final_application/screens/loginScreen.dart';
import 'package:golden_house_flutter_final_application/screens/onBoardingscreen.dart';
import 'package:golden_house_flutter_final_application/screens/pageView.dart';
import 'package:golden_house_flutter_final_application/screens/passwordChange.dart';
import 'package:golden_house_flutter_final_application/screens/profile.dart';
import 'package:golden_house_flutter_final_application/screens/reportIssues.dart';
import 'package:golden_house_flutter_final_application/screens/successScreen.dart';
import 'package:golden_house_flutter_final_application/screens/test.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeliverAddres(),
    );
  }
}