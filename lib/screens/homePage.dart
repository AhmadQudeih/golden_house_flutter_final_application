import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/discoverSearch.dart';
import 'package:golden_house_flutter_final_application/screens/homeScreen.dart';
import 'package:golden_house_flutter_final_application/screens/profile.dart';
import 'package:golden_house_flutter_final_application/screens/shoppingList.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List screens = [HomeScreen(), DiscoverSearch(), ShoppingList(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: SvgPicture.asset(
                'assets/svgIcons/home-2-svgrepo-com.svg',
                color: currentIndex == 0 ? Colors.black : Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Discover',
              icon: SvgPicture.asset(
                'assets/svgIcons/discover.svg',
                color: currentIndex == 1 ? Colors.black : Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: SvgPicture.asset(
                'assets/svgIcons/receipt.svg',
                color: currentIndex == 2 ? Colors.black : Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: SvgPicture.asset(
                'assets/svgIcons/person-svgrepo-com.svg',
                width: 24,
                color: currentIndex == 3 ? Colors.black : Colors.grey,
              ),
            ),
          ],
          selectedLabelStyle: GoogleFonts.tajawal(
            fontSize: 10,
          ),
          unselectedLabelStyle: GoogleFonts.tajawal(
            fontSize: 10,
          ),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
        body: screens[currentIndex]);
  }
}
