import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/imagesAssets.dart';
import 'package:golden_house_flutter_final_application/screens/restaurantData.dart';
import 'package:google_fonts/google_fonts.dart';

class Utensils extends StatefulWidget {
  const Utensils({super.key});

  @override
  State<Utensils> createState() => _UtensilsState();
}

class Dimensions {
  int height = 0;
  int width = 0;

  Dimensions({required this.height, required this.width});
}

class _UtensilsState extends State<Utensils> {
  List<Dimensions> dimensions = [
    Dimensions(height: 183, width: 163),
    Dimensions(height: 197, width: 163),
    Dimensions(height: 173, width: 163),
    Dimensions(height: 173, width: 183),
  ];
  List<RestaurantData> restMenuData2 = [
    RestaurantData(
        restName: 'Le Creuset Dark Blue 500ml Cup',
        logoURL:
            'https://img.freepik.com/free-photo/iron-pan-isolated-white-background_1203-2986.jpg?w=740&t=st=1695367537~exp=1695368137~hmac=8f3734fba6ec6793f9cedddd45088a3902c7fd05b2b1994d03657bd9a663d79d',
        oldPrice: '\$5.89',
        newPrice: '\$4.59'),
    RestaurantData(
        restName: 'Tefal White Potholder',
        logoURL:
            'https://purepng.com/public/uploads/large/purepng.com-meatmeatchickenanimalflesh-1411527872957yaz0d.png',
        oldPrice: '\$4.89',
        newPrice: '\$3.59'),
    RestaurantData(
        restName: 'Circulon Matte Black Pan',
        logoURL:
            'https://purepng.com/public/uploads/large/soupy-noodles-vfk.png',
        oldPrice: '\$6.89',
        newPrice: '\$5.59'),
    RestaurantData(
        restName: 'Cutting Board from Ikea',
        logoURL:
            'https://purepng.com/public/uploads/large/pistachio-bowl-k8u.png',
        oldPrice: '\$5.89',
        newPrice: '\$4.59'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 21),
        child: ListView(
          children: [
            // Back Button
            Container(
              width: 80,
              margin: EdgeInsets.only(top: 30, right: 260),
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
            // All Categories
            Container(
              margin: EdgeInsets.only(top: 45),
              child: Text(
                'Utensils',
                style: GoogleFonts.tajawal(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  height: 0.03,
                  letterSpacing: -1.80,
                ),
              ),
            ),
            // Search
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Container(
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
                    hintText: 'Search Utensils',
                    hintStyle: GoogleFonts.tajawal(
                      color: Color(0xFFB3BFCB),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.17,
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(10),
                      child:
                          SvgPicture.asset('assets/svgIcons/search-normal.svg'),
                    ),
                  ),
                ),
              ),
            ),
            // Grid View
            Stack(
              children: [
                Container(
                  height: 600,
                  width: double.infinity,
                ),
                Positioned(
                  top: 28,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.network(
                              restMenuData2[0].logoURL,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            height: 170,
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            child: Text(
                              restMenuData2[1].restName,
                              style: GoogleFonts.tajawal(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 100,
                            child: Row(
                              children: [
                                Text(
                                  restMenuData2[0].oldPrice,
                                  style: GoogleFonts.tajawal(
                                      color: Color(0xFF292D32),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Spacer(),
                                Text(
                                  restMenuData2[0].newPrice,
                                  style: GoogleFonts.tajawal(
                                    color: Color(0xFF45B7E8),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      maximumSize: Size(163, 260),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: Color(0xfff5f7f9))),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 28,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.network(
                              restMenuData2[1].logoURL,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            height: 170,
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            child: Text(
                              restMenuData2[1].restName,
                              style: GoogleFonts.tajawal(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 100,
                            child: Row(
                              children: [
                                Text(
                                  restMenuData2[1].oldPrice,
                                  style: GoogleFonts.tajawal(
                                      color: Color(0xFF292D32),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Spacer(),
                                Text(
                                  restMenuData2[1].newPrice,
                                  style: GoogleFonts.tajawal(
                                    color: Color(0xFF45B7E8),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      maximumSize: Size(163, 260),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: Color(0xfff5f7f9))),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.network(
                              restMenuData2[2].logoURL,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            height: 170,
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            child: Text(
                              restMenuData2[2].restName,
                              style: GoogleFonts.tajawal(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 100,
                            child: Row(
                              children: [
                                Text(
                                  restMenuData2[2].oldPrice,
                                  style: GoogleFonts.tajawal(
                                      color: Color(0xFF292D32),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Spacer(),
                                Text(
                                  restMenuData2[2].newPrice,
                                  style: GoogleFonts.tajawal(
                                    color: Color(0xFF45B7E8),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      maximumSize: Size(163, 260),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: Color(0xfff5f7f9))),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.network(
                              restMenuData2[3].logoURL,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            height: 170,
                          ),
                          Spacer(),
                          Container(
                            height: 40,
                            child: Text(
                              restMenuData2[3].restName,
                              style: GoogleFonts.tajawal(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 100,
                            child: Row(
                              children: [
                                Text(
                                  restMenuData2[3].oldPrice,
                                  style: GoogleFonts.tajawal(
                                      color: Color(0xFF292D32),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Spacer(),
                                Text(
                                  restMenuData2[3].newPrice,
                                  style: GoogleFonts.tajawal(
                                    color: Color(0xFF45B7E8),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      maximumSize: Size(163, 260),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: Color(0xfff5f7f9))),
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
