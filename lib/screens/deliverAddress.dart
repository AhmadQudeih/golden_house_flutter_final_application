import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/reportIssues.dart';
import 'package:golden_house_flutter_final_application/screens/successScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliverAddres extends StatefulWidget {
  const DeliverAddres({super.key});

  @override
  State<DeliverAddres> createState() => _DeliverAddresState();
}

class _DeliverAddresState extends State<DeliverAddres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 24, top: 50, right: 24),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x330D5EF9),
                        blurRadius: 20,
                        offset: Offset(0, 7),
                        spreadRadius: -4,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(51, 51),
                      backgroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 24),
                Text(
                  'Deliver to',
                  style: GoogleFonts.tajawal(
                    color: Color(0xFF171E22),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Container(
              width: 327,
              height: 102,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.50, color: Color(0x7F0D5DF8)),
                  borderRadius: BorderRadius.circular(16),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x330D5EF9),
                    blurRadius: 20,
                    offset: Offset(0, 7),
                    spreadRadius: -4,
                  )
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    builder: (BuildContext context) {
                      double screenHeight = MediaQuery.of(context).size.height;
                      double bottomSheetHeight = screenHeight * 0.75;
                      return Stack(
                        children: [
                          Container(
                            height: bottomSheetHeight,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                            ),
                            padding: const EdgeInsets.only(
                                top: 62, bottom: 30, right: 40, left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Good Evening Luisa
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  width: double.infinity,
                                  child: Text(
                                    'Edit Address',
                                    style: GoogleFonts.tajawal(
                                        fontSize: 30,
                                        shadows: [
                                          const Shadow(
                                            offset: Offset(0, 2),
                                            blurRadius: 5,
                                            color: Colors.grey,
                                          )
                                        ]),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                // Search
                                Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    width: 348,
                                    height: 51,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFEFF2F5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFEFF2F5),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black87),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        hintText: 'Look for an address',
                                        hintStyle: GoogleFonts.tajawal(
                                          color: const Color(0xFFB3BFCB),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.17,
                                        ),
                                        prefixIcon: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/svgIcons/search-normal.svg',
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            elevation: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Saved Locations',
                                    style: TextStyle(
                                      color: Color(0xFF292D32),
                                      fontSize: 21,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(top: 21),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/svgIcons/home-2-svgrepo-com.svg"),
                                      SizedBox(width: 20),
                                      Text(
                                        '34, George Avenue, Brampton,\nON L6T 8H6',
                                        style: TextStyle(
                                          color: Color(0xFF292D32),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 61,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SuccessScreen(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff292d32),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset("assets/svgIcons/gps.svg"),
                                        SizedBox(width: 20),
                                        Text(
                                          "Use Current Location",
                                          style: GoogleFonts.tajawal(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.center,
                                    ),
                                  ),
                                  width: double.infinity,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 168,
                            child: SvgPicture.asset(
                                'assets/svgIcons/Rectangle 1162.svg'),
                          ),
                          Positioned(
                            top: 9,
                            right: 9,
                            child: SvgPicture.asset('assets/svgIcons/Icon.svg'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: ShapeDecoration(
                        color: Color(0xFFD8EDF9),
                        shape: OvalBorder(),
                      ),
                      child:
                          SvgPicture.asset("assets/svgIcons/location23533.svg"),
                    ),
                    SizedBox(width: 50),
                    Text(
                      'Edit Address',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.tajawal(
                        color: Color(0xFF898A8D),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: double.infinity,
              height: 61,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff292d32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "complete Order ",
                  style: GoogleFonts.tajawal(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
