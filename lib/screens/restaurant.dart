import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/restaurantData.dart';
import 'package:google_fonts/google_fonts.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  List<RestaurantData> restMenuData = [
    RestaurantData.main(
        restName: 'McDonald’s',
        logoURL:
            'https://www.freepnglogos.com/uploads/mcdonalds-png-logo/mcdonalds-circle-logo-png-25.png',
        description: 'Bramlea & Sandalwood'),
  ];
  List<RestaurantData> restMenuData2 = [
    RestaurantData(
        restName: 'Classic Cheese Burger (400 Cals)',
        logoURL:
            'https://purepng.com/public/uploads/large/purepng.com-sandwichfood-slice-salad-tasty-bread-vegetable-health-delicious-breakfast-sandwich-9415246181796gyc0.png',
        oldPrice: '\$5.89',
        newPrice: '\$4.59'),
    RestaurantData(
        restName: 'Simply Cheese with Sesame Seed buns',
        logoURL:
            'https://purepng.com/public/uploads/large/purepng.com-meatmeatchickenanimalflesh-1411527872957yaz0d.png',
        oldPrice: '\$4.89',
        newPrice: '\$3.59'),
    RestaurantData(
        restName: 'Veggie & Bacon Hot Sauce Sandwich',
        logoURL:
            'https://purepng.com/public/uploads/large/soupy-noodles-vfk.png',
        oldPrice: '\$6.89',
        newPrice: '\$5.59'),
    RestaurantData(
        restName: 'Western BBQ Cheeseburger',
        logoURL:
            'https://purepng.com/public/uploads/large/pistachio-bowl-k8u.png',
        oldPrice: '\$5.89',
        newPrice: '\$4.59'),
    RestaurantData(
        restName: 'Bacon and Veggies Salad',
        logoURL:
            'https://purepng.com/public/uploads/large/ice-cream-bowl-j7c.png',
        oldPrice: '\$5.89',
        newPrice: '\$4.59'),
    RestaurantData(
        restName: 'Veggie & Bacon Hot Sauce Sandwich',
        logoURL:
            'https://purepng.com/public/uploads/large/purepng.com-sandwichfood-slice-salad-tasty-bread-vegetable-health-delicious-breakfast-sandwich-9415246181796gyc0.png',
        oldPrice: '\$5.89',
        newPrice: '\$4.59'),
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
          margin: EdgeInsets.only(left: 10),
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
        leadingWidth: 100,
        actions: [
          SvgPicture.asset('assets/svgIcons/more-square.svg'),
          SizedBox(width: 16),
          SvgPicture.asset('assets/svgIcons/Frame 113.svg'),
          SizedBox(width: 16),
          SvgPicture.asset('assets/svgIcons/Cart.svg'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Container(
                    height: 332,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
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
          // Expanded(child: showBottomSheet(BuildContext context))
          // restImg
          Container(
            width: double.infinity,
            height: 200,
            child: Image.network(
              'https://img.freepik.com/free-photo/front-view-yummy-meat-cheeseburger-with-french-fries-dark-background-dinner-burgers-snack-fast-food-sandwich-salad-dish-toast_140725-159215.jpg?w=1480&t=st=1695365212~exp=1695365812~hmac=5aeae6444aba2c83eddf80a68a1578406cfcf303228ed75d6db628e0ee57b4ef',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 21),
          // restMain
          ListTile(
            leading: Image.network(
              restMenuData[0].logoURL,
              width: 60,
            ),
            title: Text(
              restMenuData[0].restName,
              style: GoogleFonts.tajawal(
                color: Color(0xFF292D32),
                fontSize: 36,
                fontWeight: FontWeight.w400,
                height: 0.03,
                letterSpacing: -1.80,
              ),
            ),
            subtitle: Row(
              children: [
                SvgPicture.asset('assets/svgIcons/location1.svg'),
                Text(
                  restMenuData[0].description,
                  style: GoogleFonts.tajawal(
                    color: Color(0xFF292D32),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.17,
                  ),
                ),
              ],
            ),
            trailing: SvgPicture.asset('assets/svgIcons/Frame 35.svg'),
          ),
          SizedBox(height: 21),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 21),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                width: 348,
                height: 109,
                decoration: ShapeDecoration(
                  color: Color(0xFFe9ecf0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/svgIcons/Star 2.svg'),
                        SizedBox(width: 10),
                        Text(
                          'Ratings: 4.5',
                          style: GoogleFonts.tajawal(
                            color: Color(0xFF292D32),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svgIcons/box-time.svg'),
                        SizedBox(width: 10),
                        Text(
                          'Delivers in 15-20 min',
                          style: GoogleFonts.tajawal(
                            color: Color(0xFF292D32),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svgIcons/element-2.svg'),
                        SizedBox(width: 10),
                        Text(
                          'Burgers',
                          style: GoogleFonts.tajawal(
                            color: Color(0xFF292D32),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 30,
                right: 45,
                child: SvgPicture.asset('assets/svgIcons/More Info.svg'),
              )
            ],
          ),
          SizedBox(height: 95),
          // search menu
          Row(
            children: [
              Container(
                width: 125,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: ShapeDecoration(
                  color: Color(0xFF46505D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Today’s Deals',
                    style: GoogleFonts.tajawal(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                      letterSpacing: -0.14,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 125,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: ShapeDecoration(
                  color: Color(0xFFEFF2F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Burger Meals',
                    style: GoogleFonts.tajawal(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                      letterSpacing: -0.14,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 125,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: ShapeDecoration(
                  color: Color(0xFFEFF2F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Chicken & Fish',
                    style: GoogleFonts.tajawal(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                      letterSpacing: -0.14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          // ListView.separated
          ListView.separated(
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                  restMenuData2[index].logoURL,
                  width: 40,
                ),
                title: Container(
                    height: 60, child: Text(restMenuData2[index].restName)),
                subtitle: Row(
                  children: [
                    Text(
                      restMenuData2[index].oldPrice,
                      style: GoogleFonts.tajawal(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 0.07,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      restMenuData2[index].newPrice,
                      style: GoogleFonts.tajawal(
                        color: Color(0xFF45B7E8),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 0.07,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ],
      ),
    );
  }
}
