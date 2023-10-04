import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:golden_house_flutter_final_application/screens/deliverAddress.dart';
import 'package:golden_house_flutter_final_application/screens/editAddOn.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({super.key});

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
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
                      builder: (context) => HomePage(),
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svgIcons/more-square.svg'),
          ),
        ],
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
              Positioned(
                bottom: 10,
                left: 100,
                child: Container(
                  width: 110,
                  margin: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index > 0 ? index-- : index = index;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(28, 28),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          backgroundColor: Color(0xff2D3943),
                          elevation: 0,
                        ),
                        child: Image.asset(
                          'assets/svgIcons/minus.png',
                          width: 10,
                        ),
                      ),
                      Spacer(),
                      Text(
                        index.toString(),
                        style: GoogleFonts.cairo(
                          color: Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(28, 28),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          backgroundColor: Color(0xff2D3943),
                          elevation: 0,
                        ),
                        child: Image.asset(
                          'assets/svgIcons/plus.png',
                          width: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              )
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
              Positioned(
                bottom: 10,
                left: 100,
                child: Container(
                  width: 110,
                  margin: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index1 > 0 ? index1-- : index1 = index1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(28, 28),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          backgroundColor: Color(0xff2D3943),
                          elevation: 0,
                        ),
                        child: Image.asset(
                          'assets/svgIcons/minus.png',
                          width: 10,
                        ),
                      ),
                      Spacer(),
                      Text(
                        index1.toString(),
                        style: GoogleFonts.cairo(
                          color: Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index1++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(28, 28),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          backgroundColor: Color(0xff2D3943),
                          elevation: 0,
                        ),
                        child: Image.asset(
                          'assets/svgIcons/plus.png',
                          width: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 130),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  'Item Total',
                  style: TextStyle(
                    color: Color(0xFF657C89),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '\$83.8',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  'Delivery Charge',
                  style: TextStyle(
                    color: Color(0xFF657C89),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '\$2.25',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  'Tax',
                  style: TextStyle(
                    color: Color(0xFF657C89),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '\$0.25',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  'Total :',
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '\$86.30',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF202C59),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            height: 61,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliverAddres(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff292d32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Complate Order",
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
    );
  }
}
