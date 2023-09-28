import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'imagesAssets.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<ImagesAssets> titleStore = [
    ImagesAssets(
        ImageURl:
            'https://www.freepnglogos.com/uploads/mcdonalds-png-logo/mcdonalds-circle-logo-png-25.png',
        Logo: 'BBQ Chicken Burger',
        description: '18915 Queens Road, Brampton, ON'),
    ImagesAssets(
        ImageURl:
            'https://www.freepnglogos.com/uploads/mcdonalds-png-logo/mcdonalds-circle-logo-png-25.png',
        Logo: 'BBQ Chicken Burger',
        description: '18915 Queens Road, Brampton, ON'),
    ImagesAssets(
        ImageURl:
            'https://www.freepnglogos.com/uploads/mcdonalds-png-logo/mcdonalds-circle-logo-png-25.png',
        Logo: 'BBQ Chicken Burger',
        description: '18915 Queens Road, Brampton, ON'),
    ImagesAssets(
        ImageURl:
            'https://www.freepnglogos.com/uploads/mcdonalds-png-logo/mcdonalds-circle-logo-png-25.png',
        Logo: 'BBQ Chicken Burger',
        description: '18915 Queens Road, Brampton, ON'),
    ImagesAssets(
        ImageURl:
            'https://www.freepnglogos.com/uploads/mcdonalds-png-logo/mcdonalds-circle-logo-png-25.png',
        Logo: 'BBQ Chicken Burger',
        description: '18915 Queens Road, Brampton, ON'),
  ];

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
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 55, left: 21, right: 21),
            child: Row(
              children: [
                Text(
                  'Search',
                  style: GoogleFonts.tajawal(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                    height: 0.03,
                    letterSpacing: -1.80,
                  ),
                ),
                Spacer(),
                Container(
                  width: 94,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: Color(0x66FDD2E0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svgIcons/setting-3.svg'),
                      Text(
                        'Filter',
                        style: GoogleFonts.cairo(
                          color: Color(0xFFF3739E),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Search
          Container(
            margin: EdgeInsets.only(top: 15, left: 21, right: 21),
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
                hintText: 'Search Food, Restaurants etc.',
                hintStyle: GoogleFonts.tajawal(
                  color: Color(0xFFB3BFCB),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.17,
                ),
                prefixIcon: Container(
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset('assets/svgIcons/search-normal.svg'),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          ListView.separated(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                  titleStore[index].ImageURl,
                  width: 40,
                ),
                title: Text(titleStore[index].Logo),
                subtitle: Text(titleStore[index].description),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          )
        ],
      ),
    );
  }
}
