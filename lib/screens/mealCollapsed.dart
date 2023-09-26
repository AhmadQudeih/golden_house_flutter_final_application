import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/restaurantData.dart';
import 'package:google_fonts/google_fonts.dart';

class MealCollapsed extends StatefulWidget {
  const MealCollapsed({super.key});

  @override
  State<MealCollapsed> createState() => _MealCollapsedState();
}

class _MealCollapsedState extends State<MealCollapsed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          width: 80,
          margin: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
              ),
              Spacer(),
              Text(
                'Back',
                style: GoogleFonts.tajawal(
                  color: Color(0xFF292D32),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
              ),
            ],
          ),
        ),
        leadingWidth: 100,
        actions: [
          SvgPicture.asset('assets/svgIcons/more-square.svg'),
          SizedBox(width: 16),
          SvgPicture.asset('assets/svgIcons/Cart.svg'),
        ],
      ),
      body: ListView(
        children: [
          // the Images
          SizedBox(
            width: 438,
            height: 300,
            child: Image.network(
              'https://img.freepik.com/free-photo/tasty-burger-isolated-white-background-fresh-hamburger-fastfood-with-beef-cheese_90220-1063.jpg?w=900&t=st=1695756705~exp=1695757305~hmac=060276f7969368d40ae83f4b425c95151b43c9a1b1eade51e67253477c6fc93d',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Text(
                'Western BBQ',
                style: GoogleFonts.cairo(
                  color: Color(0xFF292D32),
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  height: 0.03,
                  letterSpacing: -1.80,
                ),
              ),
              Text(
                'Cheeseburger Meal',
                style: GoogleFonts.cairo(
                  color: Color(0xFF292D32),
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  height: 0.03,
                  letterSpacing: -1.80,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
