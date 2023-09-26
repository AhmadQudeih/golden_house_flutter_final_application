import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'imagesAssets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ImagesAssets> store = [
    ImagesAssets(
        ImageURl:
            'https://img.freepik.com/free-photo/chicken-shish-kebab-with-zucchini_2829-8660.jpg?w=1060&t=st=1695293064~exp=1695293664~hmac=109d3cafba56cf64bf22e68bb514418bb44578505053e3fc38be36df88e98daf',
        Logo:
            'https://img.freepik.com/premium-vector/chicken-mascot-logo-design-vector-template_441059-159.jpg?w=996',
        description: 'KFC'),
    ImagesAssets(
        ImageURl:
            'https://img.freepik.com/free-photo/side-view-shawarma-with-fried-potatoes-board-cookware_176474-3215.jpg?w=996&t=st=1695293881~exp=1695294481~hmac=5ef89254366922b3bc382c3c1bd2eb3c89e5482e25e27b9098a0d7180b0f3990',
        Logo:
            'https://img.freepik.com/free-vector/detailed-chef-logo-template_23-2148987940.jpg?w=996&t=st=1695295746~exp=1695296346~hmac=6aa268c88627e6f9a6757d7a347b57d8f1e5a2e1de4057a1e2c4b61154b9dc35',
        description: 'Haevey'),
    ImagesAssets(
        ImageURl:
            'https://img.freepik.com/free-photo/chicken-steak-topped-with-white-sesame-peas-tomatoes-broccoli-pumpkin-white-plate_1150-24770.jpg?w=1480&t=st=1695295719~exp=1695296319~hmac=c0b89fc12d470956090ecffa059dcc30dd43a73cbfa6700a7b7742091e2cd7ad',
        Logo:
            'https://img.freepik.com/free-vector/ecofood-logo-template_1195-33.jpg?w=996&t=st=1695295764~exp=1695296364~hmac=14939aeccff7b6a8e9114a8ed31bf4a67e3da8a4a6f557b464d62dc51204ab7e',
        description: 'Kintaky'),
  ];
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
  ];
  int currentIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Discover',
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            label: 'Drivethru',
            icon: Icon(Icons.directions_bus),
          ),
          BottomNavigationBarItem(
            label: 'Order',
            icon: Icon(Icons.list_alt),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.account_circle),
          ),
        ],
        selectedLabelStyle: GoogleFonts.tajawal(
          fontSize: 10,
          color: Colors.grey,
        ),
        unselectedLabelStyle: GoogleFonts.tajawal(
          fontSize: 10,
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Container(
                    height: 890,
                     padding: EdgeInsets.only(
                        top: 62, bottom: 30, right: 40, left: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/svgIcons/profile-2user.svg'),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Order with Friends',
                                style: GoogleFonts.cairo(
                                  color: Color(0xFF292D32),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  height: 0.08,
                                  letterSpacing: -0.17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgIcons/heart-add.svg'),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Order with Friends',
                                style: GoogleFonts.cairo(
                                  color: Color(0xFF292D32),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  height: 0.08,
                                  letterSpacing: -0.17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgIcons/send-2.svg'),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Order with Friends',
                                style: GoogleFonts.cairo(
                                  color: Color(0xFF292D32),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  height: 0.08,
                                  letterSpacing: -0.17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgIcons/info-circle.svg'),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Order with Friends',
                                style: GoogleFonts.cairo(
                                  color: Color(0xFF292D32),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  height: 0.08,
                                  letterSpacing: -0.17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 168,
                    child:
                        SvgPicture.asset('assets/svgIcons/Rectangle 1162.svg'),
                  ),
                  Positioned(
                    top: 9,
                    right: 9,
                    child: SvgPicture.asset('assets/svgIcons/Icon.svg'),
                  ),
                ],
              );
            },
          );
        },
        child: Image.asset('assets/svgIcons/up-arrow.png'),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              children: [
                // App Bar
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 12, top: 16),
                      width: 160,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFCE2CF),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/svgIcons/location.svg'),
                            Text(
                              '32, Kingston Ln.',
                              style: GoogleFonts.tajawal(
                                fontSize: 13,
                                color: Color(0xffea985b),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      width: 128,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFCE2CF),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/svgIcons/clock.svg'),
                            Text(
                              'Order Now',
                              style: GoogleFonts.tajawal(
                                fontSize: 13,
                                color: Color(0xffea985b),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Good Evening Luisa
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: double.infinity,
                  child: Text(
                    'Good Evening Luisa',
                    style: GoogleFonts.tajawal(fontSize: 30, shadows: [
                      Shadow(
                        offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.grey,
                      )
                    ]),
                    textAlign: TextAlign.start,
                  ),
                ),
                // Search
                Container(
                  margin: EdgeInsets.only(top: 15),
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
                        hintText: 'Search Food, Restaurants etc.',
                        hintStyle: GoogleFonts.tajawal(
                          color: Color(0xFFB3BFCB),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                        prefixIcon: Container(
                          padding: EdgeInsets.all(10),
                          child: SvgPicture.asset(
                              'assets/svgIcons/search-normal.svg'),
                        ),
                      ),
                    ),
                  ),
                ),
                // Categories
                Container(
                  margin: EdgeInsets.only(top: 26),
                  width: double.infinity,
                  child: Text(
                    'Categories',
                    style: GoogleFonts.tajawal(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                // GridView
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Stack(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 19,
                            mainAxisSpacing: 16),
                        itemCount: 5,
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
                        right: 100,
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
                      Positioned(
                        right: 0,
                        top: 115,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: Color(0xff45B8E9), width: 2)),
                          child: ClipOval(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xff45B8E9),
                                  ),
                                  Text(
                                    'See all',
                                    style: GoogleFonts.tajawal(
                                      fontSize: 15,
                                      color: Color(0xff45B8E9),
                                    ),
                                  ),
                                ],
                              ),
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
          Divider(height: 20),
          Column(
            children: [
              // Offers Near you
              Container(
                margin: EdgeInsets.only(top: 24, left: 21),
                width: double.infinity,
                child: Text(
                  'Offers Near you',
                  style: GoogleFonts.tajawal(
                      fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 190,
                child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 21, top: 16),
                      width: 300,
                      height: 160,
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          store[index].ImageURl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 0);
                  },
                ),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.only(top: 10, left: 21),
                width: double.infinity,
                child: Text(
                  'New & Trending',
                  style: GoogleFonts.tajawal(
                      fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 233,
                child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 21, top: 16),
                            width: 200,
                            height: 113,
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                store[index].ImageURl,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: ClipRRect(
                              child: Image.network(store[index].Logo),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            title: Text(store[index].description),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 0);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
