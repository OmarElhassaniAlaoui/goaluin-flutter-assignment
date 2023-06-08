import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_theme.dart';
import 'package:goaluin_flutter_assignment/views/auth/login_page.dart';
import 'package:goaluin_flutter_assignment/widgets/costum_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //primary design ...
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELCOME',
                style: GoogleFonts.montserrat(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textHome,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'To Test App',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.buttonColor,
                ),
                // TextStyle(
                //   fontSize: 15,
                //   fontWeight: FontWeight.bold,
                //   color: Colors.blue,
                // ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                text: "SignOut",
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
