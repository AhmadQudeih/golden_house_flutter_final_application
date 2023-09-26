import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAddOn extends StatefulWidget {
  const EditAddOn({super.key});

  @override
  State<EditAddOn> createState() => _EditAddOnState();
}

class _EditAddOnState extends State<EditAddOn> {
  var groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Text(
              'Western BBQ ... Meal',
              style: GoogleFonts.cairo(
                color: Color(0xFF292D32),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 0.08,
              ),
            )
          ],
        ),
        leadingWidth: 190,
      ),
      body: Column(
        children: [
          // Drinks
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 90,
                color: Color(0xFFEFF2F5),
              ),
              Positioned(
                top: 40,
                left: 21,
                child: Text(
                  'Drinks',
                  style: GoogleFonts.cairo(
                    color: Color(0xFF292D32),
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                    height: 0.05,
                    letterSpacing: -0.21,
                  ),
                ),
              ),
              Positioned(
                top: 65,
                left: 21,
                child: Text(
                  'Edit Juice',
                  style: GoogleFonts.cairo(
                    color: Color(0xFF6A788A),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 21,
                child: Text(
                  'REQUIRED',
                  style: GoogleFonts.cairo(
                    color: Color(0xFF28B896),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          // Drinks List
          RadioListTile(
            activeColor: Colors.black,
            title: Row(
              children: [
                Container(
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.mGmLW_bx8ZONqH8lyjRL9gHaRO?pid=ImgDet&rs=1',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  width: 33,
                  height: 43,
                ),
                SizedBox(width: 20),
                Text(
                  'Fruit Punch Juice',
                  style: GoogleFonts.cairo(
                    color: Color(0xFF292D32),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.17,
                  ),
                ),
              ],
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            value: 0,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: Colors.black,
            title: Row(
              children: [
                Container(
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.mGmLW_bx8ZONqH8lyjRL9gHaRO?pid=ImgDet&rs=1',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  width: 33,
                  height: 43,
                ),
                SizedBox(width: 20),
                Text(
                  'Fruit Punch Juice',
                  style: GoogleFonts.cairo(
                    color: Color(0xFF292D32),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.17,
                  ),
                ),
              ],
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            value: 1,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: Colors.black,
            title: Row(
              children: [
                Container(
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.mGmLW_bx8ZONqH8lyjRL9gHaRO?pid=ImgDet&rs=1',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  width: 33,
                  height: 43,
                ),
                SizedBox(width: 20),
                Text(
                  'Fruit Punch Juice',
                  style: GoogleFonts.cairo(
                    color: Color(0xFF292D32),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.17,
                  ),
                ),
              ],
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            value: 2,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: Colors.black,
            title: Row(
              children: [
                Container(
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.mGmLW_bx8ZONqH8lyjRL9gHaRO?pid=ImgDet&rs=1',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  width: 33,
                  height: 43,
                ),
                SizedBox(width: 20),
                Text(
                  'Fruit Punch Juice',
                  style: GoogleFonts.cairo(
                    color: Color(0xFF292D32),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.17,
                  ),
                ),
              ],
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            value: 3,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value!;
              });
            },
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 20, left: 21, right: 21),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  minimumSize: Size(348, 56)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svgIcons/tick-circle.svg'),
                  Text('Save'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
