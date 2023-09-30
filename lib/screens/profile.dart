import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              children: [
                SvgPicture.asset("assets/svgIcons/Vector.svg"),
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
            Row(
              children: [
                SvgPicture.asset("assets/svgIcons/Group.svg"),
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
            Row(
              children: [
                SvgPicture.asset("assets/svgIcons/ep_promotion.svg"),
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
            Row(
              children: [
                SvgPicture.asset("assets/svgIcons/majesticons_logout-half-circle-line.svg"),
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
          ],
        ),
      ),
    );
  }
}
