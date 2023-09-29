import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/editAddOn.dart';
import 'package:golden_house_flutter_final_application/screens/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

class MealCollapsed extends StatefulWidget {
  const MealCollapsed({super.key});

  @override
  State<MealCollapsed> createState() => _MealCollapsedState();
}

class _MealCollapsedState extends State<MealCollapsed> {
  bool sideItem = false;
  bool drinks = false;
  bool editCheeseburger = false;
  int groupValue1 = 0;
  int groupValue2 = 0;
  int groupValue3 = 0;
  int index1 = 1;
  int index2 = 1;
  int index3 = 1;
  int index4 = 1;
  int index5 = 1;
  int index6 = 1;

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
                icon: const Icon(Icons.arrow_back),
                color: Colors.black,
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
          SvgPicture.asset('assets/svgIcons/more-square.svg'),
          const SizedBox(width: 16),
          SvgPicture.asset('assets/svgIcons/Cart.svg'),
        ],
      ),
      body: ListView(
        children: [
          // the Images
          Stack(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 200,
              ),
              Positioned(
                right: 0,
                child: Image.asset('assets/svgIcons/images/Frame1.png'),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: Image.asset('assets/svgIcons/images/Rectangle.png'),
              ),
              Positioned(
                top: 130,
                left: 130,
                child: Image.asset('assets/svgIcons/images/Frame.png'),
              )
            ],
          ),
          // Western BBQ Cheeseburger Meal
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Western BBQ Cheeseburger Meal',
                  style: TextStyle(
                    color: Color(0xFF292D32),
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '340-400 Cals',
                      style: GoogleFonts.cairo(
                        color: const Color(0xFFB3BFCB),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset('assets/svgIcons/info-circle1.svg'),
                  ],
                ),
              ],
            ),
          ),
          // Side Item
          Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.only(left: 21, right: 15),
            width: 390,
            height: 56,
            color: const Color(0xffEFF2F5),
            child: Row(
              children: [
                Text(
                  'Side Item',
                  style: GoogleFonts.cairo(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 130),
                  child: Text(
                    'REQUIRED',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.cairo(
                      color: const Color(0xFF28B896),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sideItem = !sideItem;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(28, 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: const Color(0xffB3BFCB),
                    elevation: 0,
                  ),
                  child: SvgPicture.asset(sideItem
                      ? 'assets/svgIcons/minus.svg'
                      : 'assets/svgIcons/add.svg'),
                ),
              ],
            ),
          ),
          Visibility(
            visible: sideItem,
            child: Column(
              children: [
                RadioListTile(
                  activeColor: Colors.pinkAccent,
                  title: Row(
                    children: [
                      Container(
                        width: 43,
                        height: 43,
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.f9SCpOVAIqXtEXvqdoIOHAHaHa?pid=ImgDet&rs=1',
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Medium Fries',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
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
                  groupValue: groupValue1,
                  onChanged: (value) {
                    setState(() {
                      groupValue1 = value!;
                    });
                  },
                ),
                RadioListTile(
                  activeColor: Colors.pinkAccent,
                  title: Row(
                    children: [
                      Container(
                        width: 43,
                        height: 43,
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.f9SCpOVAIqXtEXvqdoIOHAHaHa?pid=ImgDet&rs=1',
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Large Fries',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                          letterSpacing: -0.17,
                        ),
                      ),
                      const Spacer(),
                      if (groupValue1 == 2)
                        Text(
                          '+\$2.99',
                          style: GoogleFonts.cairo(
                            color: const Color(0x99292D32),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    ],
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: 2,
                  groupValue: groupValue1,
                  onChanged: (value) {
                    setState(() {
                      groupValue1 = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          // drinks
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 21, right: 15),
            width: 390,
            height: 56,
            color: const Color(0xffEFF2F5),
            child: Row(
              children: [
                Text(
                  'Drinks',
                  style: GoogleFonts.cairo(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 160),
                  child: Text(
                    'REQUIRED',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.cairo(
                      color: const Color(0xFF28B896),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      drinks = !drinks;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(28, 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: const Color(0xffB3BFCB),
                    elevation: 0,
                  ),
                  child: SvgPicture.asset(drinks
                      ? 'assets/svgIcons/minus.svg'
                      : 'assets/svgIcons/add.svg'),
                ),
              ],
            ),
          ),
          Visibility(
            visible: drinks,
            child: Column(
              children: [
                RadioListTile(
                  activeColor: Colors.pinkAccent,
                  title: Text(
                    'Soft Drinks',
                    style: GoogleFonts.cairo(
                      color: const Color(0xFF292D32),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                      letterSpacing: -0.17,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: 1,
                  groupValue: groupValue2,
                  onChanged: (value) {
                    setState(() {
                      groupValue2 = value!;
                    });
                  },
                ),
                RadioListTile(
                  activeColor: Colors.pinkAccent,
                  title: Text(
                    'Juices',
                    style: GoogleFonts.cairo(
                      color: const Color(0xFF292D32),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: 2,
                  groupValue: groupValue2,
                  onChanged: (value) {
                    setState(() {
                      groupValue2 = value!;
                    });
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 21),
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditAddOn(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xffB3BFCB),
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 43,
                          height: 33,
                          child:
                              Image.asset('assets/svgIcons/images/Frame1.png'),
                        ),
                        Text(
                          'Fruit Punch Juice',
                          style: GoogleFonts.cairo(
                            color: const Color(0xFF292D32),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 80),
                          child: Text(
                            'Edit',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.cairo(
                              color: const Color(0xFF292D32),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF292D32),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // editCheeseburger
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 21, right: 15),
            width: 390,
            height: 56,
            color: const Color(0xffEFF2F5),
            child: Row(
              children: [
                Text(
                  'Edit Cheeseburger',
                  style: GoogleFonts.cairo(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      editCheeseburger = !editCheeseburger;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(28, 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: const Color(0xffB3BFCB),
                    elevation: 0,
                  ),
                  child: SvgPicture.asset(editCheeseburger
                      ? 'assets/svgIcons/minus.svg'
                      : 'assets/svgIcons/add.svg'),
                ),
              ],
            ),
          ),
          Visibility(
            visible: editCheeseburger,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 21),
              child: Column(
                children: [
                  SizedBox(
                    height: 54,
                    child: Row(
                      children: [
                        Container(
                          child:
                              Image.asset('assets/svgIcons/images/Frame1.png'),
                          width: 43,
                          height: 33,
                        ),
                        Text(
                          'Sesame Seed Bun',
                          style: GoogleFonts.cairo(
                            color: const Color(0xFF292D32),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 80),
                          child: Text(
                            'Edit',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.cairo(
                              color: const Color(0xFF292D32),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF292D32),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/svgIcons/images/Frame1.png'),
                        width: 43,
                        height: 33,
                      ),
                      Text(
                        'BBQ Sauce',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 120,
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/svgIcons/images/Frame1.png'),
                        width: 43,
                        height: 33,
                      ),
                      Text(
                        'Beef Patty',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 120,
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index2++;
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
                            Spacer(),
                            Text(
                              index2.toString(),
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
                                  index2 > 0 ? index2-- : index2 = index2;
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/svgIcons/images/Frame1.png'),
                        width: 43,
                        height: 33,
                      ),
                      Text(
                        'Cheese',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 120,
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index3++;
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
                            Spacer(),
                            Text(
                              index3.toString(),
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
                                  index3 > 0 ? index3-- : index3 = index3;
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/svgIcons/images/Frame1.png'),
                        width: 43,
                        height: 33,
                      ),
                      Text(
                        'Banana Peppers',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 120,
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index4++;
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
                            Spacer(),
                            Text(
                              index4.toString(),
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
                                  index4 > 0 ? index4-- : index4 = index4;
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/svgIcons/images/Frame1.png'),
                        width: 43,
                        height: 33,
                      ),
                      Text(
                        'Lettuce',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 120,
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index5++;
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
                            Spacer(),
                            Text(
                              index5.toString(),
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
                                  index5 > 0 ? index5-- : index5 = index5;
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/svgIcons/images/Frame1.png'),
                        width: 43,
                        height: 33,
                      ),
                      Text(
                        'Chipotle Sauce',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 120,
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index6++;
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
                            Spacer(),
                            Text(
                              index6.toString(),
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
                                  index6 > 0 ? index6-- : index6 = index6;
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/svgIcons/images/Frame1.png'),
                        width: 43,
                        height: 33,
                      ),
                      Text(
                        'Sesame Seed Bun',
                        style: GoogleFonts.cairo(
                          color: const Color(0xFF292D32),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Last Button
          Stack(
            children: [
              Container(height: 220),
              Positioned(
                bottom: 30,
                left: 21,
                child: Row(
                  children: [
                    Container(
                      width: 62,
                      height: 62,
                      padding: const EdgeInsets.all(19),
                      decoration: ShapeDecoration(
                        color: Color(0x4CF3739E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: SvgPicture.asset('assets/svgIcons/heart.svg'),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      width: 268,
                      height: 62,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff292D32),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          elevation: 0,
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/svgIcons/bag-happy.svg'),
                            SizedBox(width: 10),
                            Text(
                              'Add to Bag',
                              style: GoogleFonts.cairo(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '\$8.69',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.cairo(
                                color: Color(0xFF45B7E8),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
