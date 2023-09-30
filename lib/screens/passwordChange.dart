import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
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
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
                color: Color(0xff0092ca),
              ),
            ],
          ),
        ),
        leadingWidth: 100,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 43, vertical: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                          "assets/svgIcons/unsplash_DItYlc26zVI.png"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 65,
                      child: SvgPicture.asset("assets/svgIcons/Group 1024.svg"),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Text(
                  "New Password",
                  style: GoogleFonts.tajawal(
                    color: Color(0xFF8A8A8A),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 7),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  height: 39,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x16000000),
                        blurRadius: 30,
                        offset: Offset(5, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 21),
                Text(
                  "confirm password",
                  style: GoogleFonts.tajawal(
                    color: Color(0xFF8A8A8A),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 7),
                Container(
                  padding: EdgeInsets.only(bottom: 10, left: 10),
                  height: 39,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x16000000),
                        blurRadius: 30,
                        offset: Offset(5, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 57),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff292d32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "Save",
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
          ],
        ),
      ),
    );
  }
}
