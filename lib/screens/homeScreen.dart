import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/discoverSearch.dart';
import 'package:golden_house_flutter_final_application/screens/profile.dart';
import 'package:golden_house_flutter_final_application/screens/restaurantMenu.dart';
import 'package:golden_house_flutter_final_application/screens/shoppingList.dart';
import 'package:golden_house_flutter_final_application/screens/utensils.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories.dart';
import 'imagesAssets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShoppingList(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset(
                    'assets/svgIcons/Cart.svg',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                ),
                // Good Evening Luisa
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: double.infinity,
                  child: Text(
                    'Good Evening Luisa',
                    style: GoogleFonts.tajawal(fontSize: 30, shadows: [
                      const Shadow(
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
                  margin: const EdgeInsets.only(top: 15),
                  child: Container(
                    width: 348,
                    height: 51,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEFF2F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFEFF2F5),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black87),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        hintText: 'Search Food, Restaurants etc.',
                        hintStyle: GoogleFonts.tajawal(
                          color: const Color(0xFFB3BFCB),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/svgIcons/search-normal.svg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Categories
                Container(
                  margin: const EdgeInsets.only(top: 26),
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
                  margin: const EdgeInsets.only(top: 10),
                  child: Stack(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 19,
                                mainAxisSpacing: 16),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: const Color(0xfffdeef3),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Utensils(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xfffdeef3),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
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
                                    const SizedBox(height: 10),
                                    Text(
                                      store2[index].description,
                                      style: GoogleFonts.tajawal(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
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
                          decoration: const ShapeDecoration(
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
                                  color: const Color(0xff45B8E9), width: 2)),
                          child: ClipOval(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Categories(),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xff45B8E9),
                                  ),
                                  Text(
                                    'See all',
                                    style: GoogleFonts.tajawal(
                                      fontSize: 15,
                                      color: const Color(0xff45B8E9),
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
          const Divider(height: 20),
          Column(
            children: [
              // Offers Near you
              Container(
                margin: const EdgeInsets.only(top: 24, left: 21),
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
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10, top: 16),
                      width: 300,
                      height: 160,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            store[index].ImageURl,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 0);
                  },
                ),
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 21),
                width: double.infinity,
                child: Text(
                  'New & Trending',
                  style: GoogleFonts.tajawal(
                      fontSize: 17, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 200,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RestaurantMenu(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 16),
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
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 0);
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
