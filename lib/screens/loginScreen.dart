import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:golden_house_flutter_final_application/screens/homePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visibil = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(right: 21, bottom: 20, left: 21),
        child: ListView(
          children: [
            // Welcome ----------------------------------------------------------
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: ListTile(
                title: Text(
                  'Welcome!',
                  style: GoogleFonts.tajawal(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.72,
                  ),
                ),
                subtitle: Text(
                  'Sign up or Login to your Account',
                  style: GoogleFonts.tajawal(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
            ),
            // Login And SignUp ------------------------------------------------
            Container(
              margin: const EdgeInsets.only(top: 21),
              width: 358,
              height: 63,
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 13,
                bottom: 10,
              ),
              decoration: ShapeDecoration(
                color: const Color(0x66FDD2E0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(230),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 43,
                    width: 151,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          visibil = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: visibil
                            ? const Color.fromRGBO(244, 115, 158, 1)
                            : const Color(0x66FDD2E0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.tajawal(
                          color: visibil
                              ? Colors.white
                              : const Color.fromRGBO(244, 115, 158, 1),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 43,
                    width: 151,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          visibil = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: !visibil
                            ? const Color.fromRGBO(244, 115, 158, 1)
                            : const Color(0x66FDD2E0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.tajawal(
                          color: !visibil
                              ? Colors.white
                              : const Color.fromRGBO(244, 115, 158, 1),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (visibil)
              // Login Screen
              Column(
                children: [
                  // Email Address ---------------------------------------------------
                  Container(
                    margin: const EdgeInsets.only(top: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 13, bottom: 6),
                          child: Text(
                            'Email Address',
                            style: GoogleFonts.tajawal(
                              color: const Color(0xFF292D32),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.17,
                            ),
                          ),
                        ),
                        Container(
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
                                borderSide:
                                    const BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              hintText: 'Enter your Email',
                              hintStyle: GoogleFonts.tajawal(
                                color: const Color(0xFFB3BFCB),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                              suffix: SvgPicture.asset(
                                'assets/svgIcons/close-circle.svg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Password --------------------------------------------------------
                  Container(
                    margin: const EdgeInsets.only(top: 26),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 13, bottom: 6),
                          child: Text(
                            'Password',
                            style: GoogleFonts.tajawal(
                              color: const Color(0xFF292D32),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.17,
                            ),
                          ),
                        ),
                        Container(
                          width: 348,
                          height: 51,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEFF2F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFEFF2F5),
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              hintText: 'Enter your Password',
                              hintStyle: GoogleFonts.tajawal(
                                color: const Color(0xFFB3BFCB),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                              suffix: SvgPicture.asset(
                                'assets/svgIcons/close-circle.svg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Forget Password -------------------------------------------------
                  Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.tajawal(
                          color: const Color(0xFF6A788A),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            else
              // SignUp Screen
              Column(
                children: [
                  // Full Name ---------------------------------------------------
                  Container(
                    margin: const EdgeInsets.only(top: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 13, bottom: 6),
                          child: Text(
                            'Full Name',
                            style: GoogleFonts.tajawal(
                              color: const Color(0xFF292D32),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.17,
                            ),
                          ),
                        ),
                        Container(
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
                                borderSide:
                                    const BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              hintText: 'Enter your Name',
                              hintStyle: GoogleFonts.tajawal(
                                color: const Color(0xFFB3BFCB),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                              suffix: SvgPicture.asset(
                                'assets/svgIcons/close-circle.svg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Phone Number ---------------------------------------------------
                  Container(
                    margin: const EdgeInsets.only(top: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 13, bottom: 6),
                          child: Text(
                            'Phone Number',
                            style: GoogleFonts.tajawal(
                              color: const Color(0xFF292D32),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.17,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffEFF2F5),
                              borderRadius: BorderRadius.circular(14)),
                          child: InternationalPhoneNumberInput(
                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                            },
                            selectorConfig: const SelectorConfig(
                              selectorType: PhoneInputSelectorType.DROPDOWN,
                            ),
                            ignoreBlank: false,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            inputBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            inputDecoration: InputDecoration(
                              fillColor: Colors.pinkAccent,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFEFF2F5),
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              hintText: '000 000 0000',
                              hintStyle: GoogleFonts.tajawal(
                                color: const Color(0xFFB3BFCB),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Create Password --------------------------------------------------------
                  Container(
                    margin: const EdgeInsets.only(top: 26),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 13, bottom: 6),
                          child: Text(
                            'Create Password',
                            style: GoogleFonts.tajawal(
                              color: const Color(0xFF292D32),
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.17,
                            ),
                          ),
                        ),
                        Container(
                          width: 348,
                          height: 51,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEFF2F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFEFF2F5),
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black87),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              hintText: 'Enter your Password',
                              hintStyle: GoogleFonts.tajawal(
                                color: const Color(0xFFB3BFCB),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.17,
                              ),
                              suffix: SvgPicture.asset(
                                'assets/svgIcons/close-circle.svg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            Stack(
              children: [
                const SizedBox(
                  height: 300,
                  width: double.infinity,
                ),
                // Or Login Using --------------------------------------------------
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 250,
                  child: Row(
                    children: [
                      Text(
                        visibil ? 'Or Login Using :' : 'Or SignUp Using :',
                        style: GoogleFonts.tajawal(
                          color: const Color(0xFF6A788A),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.17,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 190,
                        height: 1,
                        color: const Color(0xFFD5DEE7),
                      )
                    ],
                  ),
                ),
                // Icon Google And Apple And Facebook ------------------------------
                Positioned(
                  bottom: 160,
                  right: 50,
                  left: 0,
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: 71,
                          height: 71,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1.50, color: Color(0xFFD4DDE7)),
                            ),
                          ),
                          margin: const EdgeInsets.only(right: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            child: SvgPicture.asset(
                              'assets/svgIcons/icons8-google.svg',
                            ),
                          ),
                        ),
                        Container(
                          width: 71,
                          height: 71,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1.50, color: Color(0xFFD4DDE7)),
                            ),
                          ),
                          margin: const EdgeInsets.only(right: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            child: SvgPicture.asset(
                              'assets/svgIcons/icons8-apple.svg',
                            ),
                          ),
                        ),
                        Container(
                          width: 71,
                          height: 71,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1.50, color: Color(0xFFD4DDE7)),
                            ),
                          ),
                          margin: const EdgeInsets.only(right: 20),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            child: SvgPicture.asset(
                              'assets/svgIcons/icons8-facebook.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Login button ----------------------------------------------------
                Positioned(
                  bottom: 40,
                  right: 0,
                  left: 0,
                  child: SizedBox(
                    height: 64,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFBBE8FB),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            visibil ? 'Login' : 'SignUp',
                            style: GoogleFonts.tajawal(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
