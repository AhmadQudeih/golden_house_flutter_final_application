import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/homePage.dart';
import 'package:golden_house_flutter_final_application/screens/pageView.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  void initState() {
    // مثود يشتغل اول ما يشتغل البرنامج
    // TODO: implement initState
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PageViewScreen()));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4739e),
      body: Center(
        child: Image.asset('assets/svgIcons/octopus_3951926.png',height: 204,),
      ),
    );
  }
}
