import 'package:flutter/material.dart';
import 'package:golden_house_flutter_final_application/screens/loginScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class pageViewAssets {
  String imgUrl = '';
  String title = '';
  String disc = '';

  pageViewAssets(this.imgUrl, this.title, this.disc);
}

class _PageViewScreenState extends State<PageViewScreen> {
  int pageIndex = 0;
  List<pageViewAssets> store = [
    pageViewAssets(
        "assets/svgIcons/Young man ordering food online.png",
        "Get Food Delivered to Your Doorstep",
        "Our food delivery app makes it easy to order from your favorite restaurants and have your meals delivered to your doorstep."),
    pageViewAssets(
        "assets/svgIcons/map marker.png",
        "Discover New Restaurants and Cuisines with Our App",
        "Our food delivery app not only allows you to order from your favorite restaurants but also gives you the opportunity to discover new places to eat."),
    pageViewAssets(
        "assets/svgIcons/Food delivery.png",
        "Experience Convenient and Fast Food Delivery with Our App",
        "Say goodbye to waiting in line or dealing with traffic, our food delivery app will make ordering and receiving your food a breeze."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 106),
            padding: EdgeInsets.symmetric(horizontal: 21),
            width: double.infinity,
            height: 530,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                pageIndex = index;
                return Column(
                  children: [
                    SizedBox(
                      child: Text(
                        store[index].title,
                        style: GoogleFonts.poppins(
                          color: Color(0xFFF3739E),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      height: 150,
                    ),
                    Image.asset(store[index].imgUrl, height: 260, width: 360),
                    SizedBox(height: 35),
                    Text(
                      store[index].disc,
                      style: GoogleFonts.poppins(
                        color: Color(0xFF6D5959),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            width: 140,
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xffd9d9d9),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Container(
                  width: 46.36,
                  height: 6,
                  decoration: ShapeDecoration(
                    color:
                        pageIndex == 0 ? Color(0xFFF3739E) : Color(0xffd9d9d9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Container(
                  width: 46.36,
                  height: 6,
                  decoration: ShapeDecoration(
                    color:
                        pageIndex == 1 ? Color(0xFFF3739E) : Color(0xffd9d9d9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Container(
                  width: 46.36,
                  height: 6,
                  decoration: ShapeDecoration(
                    color:
                        pageIndex == 2 ? Color(0xFFF3739E) : Color(0xffd9d9d9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
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
              backgroundColor: Color(0xfff4739e),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: pageIndex == 2 ? Text('Order') : Text('Next'),
          ),
        ],
      ),
    );
  }
}
