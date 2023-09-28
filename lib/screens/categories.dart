import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';
import 'imagesAssets.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<ImagesAssets> store2 = [
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/purepng.com-sandwichfood-slice-salad-tasty-bread-vegetable-health-delicious-breakfast-sandwich-9415246181796gyc0.png',
        description: 'Burgers'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/purepng.com-meatmeatchickenanimalflesh-1411527872957yaz0d.png',
        description: 'Meat'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/soupy-noodles-vfk.png',
        description: 'soup'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/pistachio-bowl-k8u.png',
        description: 'Nuts'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/ice-cream-bowl-j7c.png',
        description: 'ice cream'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/purepng.com-sandwichfood-slice-salad-tasty-bread-vegetable-health-delicious-breakfast-sandwich-9415246181796gyc0.png',
        description: 'Burgers'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/purepng.com-meatmeatchickenanimalflesh-1411527872957yaz0d.png',
        description: 'Meat'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/soupy-noodles-vfk.png',
        description: 'soup'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/pistachio-bowl-k8u.png',
        description: 'Nuts'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/ice-cream-bowl-j7c.png',
        description: 'ice cream'),
    ImagesAssets.ImageURL(
        ImageURl:
            'https://purepng.com/public/uploads/large/ice-cream-bowl-j7c.png',
        description: 'ice cream'),
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
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 21),
        child: ListView(
          children: [
            // All Categories
            Container(
              margin: EdgeInsets.only(top: 45),
              child: Text(
                'All Categories',
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
                    hintText: 'Search by Category',
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
            Container(
              margin: EdgeInsets.only(top: 21),
              child: Stack(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 19,
                        mainAxisSpacing: 16),
                    itemCount: 11,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Color(0xfffdeef3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ClipRRect(
                                child: Image.network(
                                  store2[index].ImageURl,
                                  width: 60,
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              SizedBox(height: 10),
                              Text(
                                store2[index].description,
                                style: GoogleFonts.tajawal(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    left: 80,
                    bottom: 70,
                    child: Container(
                      width: 42,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: Color(0xFFE9985B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'NEW',
                          style: GoogleFonts.tajawal(
                              fontSize: 10, color: Colors.white),
                        ),
                      ),
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
