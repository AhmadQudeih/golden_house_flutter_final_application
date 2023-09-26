import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 21, bottom: 20, left: 21),
        child: ListView(
          children: [
            // Welcome ----------------------------------------------------------
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ListTile(
                title: Text(
                  'Welcome!',
                  style: GoogleFonts.tajawal(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.72,
                  ),
                ),
                subtitle: Text(
                  'Sign up or Login to your Account',
                  style: GoogleFonts.tajawal(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
            ),
            // Login And SignUp ------------------------------------------------
            Container(
              margin: EdgeInsets.only(top: 21),
              width: 358,
              height: 63,
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 13,
                bottom: 10,
              ),
              decoration: ShapeDecoration(
                color: Color(0x66FDD2E0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(230),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 43,
                    width: 151,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0x66FDD2E0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.tajawal(
                          color: Color(0xFFF4739E),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 43,
                    width: 151,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color.fromRGBO(244, 115, 158, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.tajawal(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Full Name ---------------------------------------------------
            Container(
              margin: EdgeInsets.only(top: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 13, bottom: 6),
                    child: Text(
                      'Full Name',
                      style: GoogleFonts.tajawal(
                        color: Color(0xFF292D32),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                  Container(
                    width: 348,
                    height: 51,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEFF2F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFEFF2F5),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        hintText: 'Enter your Name',
                        hintStyle: GoogleFonts.tajawal(
                          color: Color(0xFFB3BFCB),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                        suffix: SvgPicture.asset(
                          'assets/svgIcons/close-circle.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Phone Number ---------------------------------------------------
            Container(
              margin: EdgeInsets.only(top: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 13, bottom: 6),
                    child: Text(
                      'Phone Number',
                      style: GoogleFonts.tajawal(
                        color: Color(0xFF292D32),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                  Container(
                    width: 348,
                    height: 51,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEFF2F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFEFF2F5),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        hintText: '000 000 0000',
                        hintStyle: GoogleFonts.tajawal(
                          color: Color(0xFFB3BFCB),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Create Password --------------------------------------------------------
            Container(
              margin: EdgeInsets.only(top: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 13, bottom: 6),
                    child: Text(
                      'Create Password',
                      style: GoogleFonts.tajawal(
                        color: Color(0xFF292D32),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.17,
                      ),
                    ),
                  ),
                  Container(
                    width: 348,
                    height: 51,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEFF2F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFEFF2F5),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        hintText: 'Enter your Password',
                        hintStyle: GoogleFonts.tajawal(
                          color: Color(0xFFB3BFCB),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                        suffix: SvgPicture.asset(
                          'assets/svgIcons/close-circle.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Or Login Using --------------------------------------------------
            Container(
              margin: EdgeInsets.only(top: 38),
              child: Row(
                children: [
                  Text(
                    'Or Sign Up Using :',
                    style: GoogleFonts.tajawal(
                      color: Color(0xFF6A788A),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.17,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 190,
                    height: 1,
                    color: Color(0xFFD5DEE7),
                  )
                ],
              ),
            ),
            // Icon Google And Apple And Facebook ------------------------------
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 28),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 71,
                    height: 71,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 1.50, color: Color(0xFFD4DDE7)),
                      ),
                    ),
                    margin: EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(
                      'assets/svgIcons/icons8-google.svg',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 71,
                    height: 71,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 1.50, color: Color(0xFFD4DDE7)),
                      ),
                    ),
                    margin: EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(
                      'assets/svgIcons/icons8-apple.svg',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 71,
                    height: 71,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 1.50, color: Color(0xFFD4DDE7)),
                      ),
                    ),
                    margin: EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(
                      'assets/svgIcons/icons8-facebook.svg',
                    ),
                  ),
                ],
              ),
            ),
            // Login button ----------------------------------------------------
            Container(
              margin: EdgeInsets.only(top: 45),
              height: 64,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFBBE8FB),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: GoogleFonts.tajawal(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}