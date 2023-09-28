import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/utensils.dart';
import 'package:google_fonts/google_fonts.dart';

class UtensilsProduct extends StatefulWidget {
  const UtensilsProduct({super.key});

  @override
  State<UtensilsProduct> createState() => _UtensilsProductState();
}

class _UtensilsProductState extends State<UtensilsProduct> {
  bool visibil = false;

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
                      builder: (context) => Utensils(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_back_rounded),
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
          SvgPicture.asset('assets/svgIcons/export.svg'),
          const SizedBox(width: 16),
          SvgPicture.asset('assets/svgIcons/more-square.svg'),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 180,
                width: double.infinity,
                child: Image.asset('assets/svgIcons/Rectangle.png'),
              ),
              Positioned(
                top: 90,
                right: 50,
                child: Container(
                  width: 142,
                  height: 40,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF292D32)),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      ),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    '1 YEAR WARRANTY',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      color: Color(0xFF292D32),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
              ),
            ],
          ),
          // Chopping Board from Ikea
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Chopping Board from Ikea',
                  style: TextStyle(
                    color: Color(0xFF292D32),
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Brand :',
                      style: GoogleFonts.cairo(
                        color: Color(0xFF46505D),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Image.network(
                      'https://th.bing.com/th/id/R.1974d8a77e7bb9f34d6962dd92c5c393?rik=XTBCOa8GKSbBYQ&pid=ImgRaw&r=0',
                      width: 60,
                    ),
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
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      visibil = !visibil;
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
                  child: SvgPicture.asset(visibil
                      ? 'assets/svgIcons/minus.svg'
                      : 'assets/svgIcons/add.svg'),
                ),
              ],
            ),
          ),
          Visibility(
            visible: visibil,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 21),
                  child: Text(
                    'You can easily turn the chopping board and use both sides when you prepare food, because it has easy-to-grip slanted edges. You can also use the chopping board as a serving ...',
                    style: GoogleFonts.cairo(
                      color: Color(0xFF46505D),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 21),
                  width: 137,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      backgroundColor: Color(0xFFFCE2CE),
                    ),
                    child: Center(
                      child: Text(
                        '+ Read More',
                        style: GoogleFonts.cairo(
                          color: Color(0xFFE9985B),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Last Button
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 62,
                height: 62,
                padding: const EdgeInsets.all(19),
                decoration: ShapeDecoration(
                  color: Color(0xffEFF2F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: SvgPicture.asset('assets/svgIcons/heart.svg',color: Color(0xffb3bfcb),),
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
        ],
      ),
    );
  }
}
