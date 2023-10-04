import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:golden_house_flutter_final_application/screens/deliverAddress.dart';
import 'package:golden_house_flutter_final_application/screens/editAddOn.dart';
import 'package:golden_house_flutter_final_application/screens/profile.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  int index = 0;
  int index1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          width: 80,
          margin: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Text(
                'Back',
                style: GoogleFonts.tajawal(
                  color: const Color(0xFF292D32),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
              ),
            ],
          ),
        ),
        leadingWidth: 100,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          Stack(
            children: [
              Container(
                width: 345,
                height: 127,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 10,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 10,
                      offset: Offset(-4, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 28,
                left: 16,
                child: Image.asset(
                  "assets/svgIcons/images/Rectangle.png",
                  height: 70,
                  width: 150,
                ),
              ),
              Positioned(
                top: 25,
                left: 128,
                child: Text(
                  'Chipotle Che...',
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                bottom: 18,
                right: 20,
                child: Text(
                  '\$62.85',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgIcons/bi_x.svg"),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Stack(
            children: [
              Container(
                width: 345,
                height: 127,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 10,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 10,
                      offset: Offset(-4, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 28,
                left: 16,
                child: Image.asset(
                  "assets/svgIcons/images/Rectangle.png",
                  height: 70,
                  width: 150,
                ),
              ),
              Positioned(
                top: 25,
                left: 128,
                child: Text(
                  'Chipotle Che...',
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                bottom: 18,
                right: 20,
                child: Text(
                  '\$62.85',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgIcons/bi_x.svg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
