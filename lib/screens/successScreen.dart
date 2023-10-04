import 'dart:async';

import 'package:flutter/material.dart';
import 'package:golden_house_flutter_final_application/screens/homePage.dart';
import 'package:golden_house_flutter_final_application/screens/homeScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  void initState() {
    // مثود يشتغل اول ما يشتغل البرنامج
    // TODO: implement initState
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/svgIcons/Confirmed-rafiki 1.png"),
            SizedBox(height: 78),
            Text(
              "Order Sent Successfully",
              style: GoogleFonts.tajawal(
                color: Color(0xFF292D32),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
