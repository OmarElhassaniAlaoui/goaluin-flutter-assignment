import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_theme.dart';
import 'package:goaluin_flutter_assignment/views/auth/login_page.dart';
import 'package:goaluin_flutter_assignment/views/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backGroundColor1,
      body: Container(
        // margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                child: SvgPicture.asset(
                  'assets/images/first_image.svg',
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'We are here',
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        color: AppTheme.buttonColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your search is over here. We \nprovide great figma design to \nuse in your project",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: AppTheme.buttonColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AppTheme.backGroundColor1,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppTheme.buttonColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 199,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SignUp",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: AppTheme.buttonColor,
                        // onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 70,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => const LoginPage());
                      },
                      child: Text(
                        "SignIn",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: AppTheme.buttonColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        primary: AppTheme.buttonColor,
                        // onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Text(
                  "App version 1.0.0",
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: AppTheme.buttonColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
