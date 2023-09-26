import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/imagesAssets.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
      body: ListView(
        children: [
          // Back Button
          Container(
            width: 80,
            margin: EdgeInsets.only(top: 30, right: 290, left: 10),
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
            margin: EdgeInsets.only(top: 55, left: 21),
            child: Text(
              'Burgers',
              style: GoogleFonts.tajawal(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.w400,
                height: 0.03,
                letterSpacing: -1.80,
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
