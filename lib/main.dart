import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:golden_house_flutter_final_application/screens/favorite.dart';
import 'package:golden_house_flutter_final_application/screens/onBoardingscreen.dart';
import 'package:golden_house_flutter_final_application/screens/profile.dart';
import 'package:golden_house_flutter_final_application/screens/restaurant.dart';
import 'package:golden_house_flutter_final_application/screens/shoppingList.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Favorite(),
    );
  }
}
