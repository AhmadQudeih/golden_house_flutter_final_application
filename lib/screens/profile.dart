import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/contatUs.dart';
import 'package:golden_house_flutter_final_application/screens/loginScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'editInfo.dart';
import 'favorite.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 28, vertical: 55),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/svgIcons/Ellipse 2.png",
                  height: 141,
                  width: 141,
                ),
                SizedBox(width: 20),
                Text(
                  "Seven Kay",
                  style: GoogleFonts.tajawal(
                    color: Color(0xFF292D32),
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 86),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Favorite(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgIcons/favorite-svgrepo-com.svg",
                    width: 47,
                    height: 37,
                  ),
                  SizedBox(width: 37),
                  Text(
                    "Your Favorite",
                    style: GoogleFonts.tajawal(
                      color: Color(0xFF292D32),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditInfo(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgIcons/person-svgrepo-com.svg",
                    width: 47,
                    height: 37,
                  ),
                  SizedBox(width: 37),
                  Text(
                    "edit info",
                    style: GoogleFonts.tajawal(
                      color: Color(0xFF292D32),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContatUs(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgIcons/telegram-svgrepo-com.svg",
                    width: 47,
                    height: 37,
                  ),
                  SizedBox(width: 37),
                  Text(
                    "Contact Us",
                    style: GoogleFonts.tajawal(
                      color: Color(0xFF292D32),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgIcons/logout-svgrepo-com.svg",
                    width: 47,
                    height: 37,
                  ),
                  SizedBox(width: 37),
                  Text(
                    "log out",
                    style: GoogleFonts.tajawal(
                      color: Color(0xFF292D32),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
