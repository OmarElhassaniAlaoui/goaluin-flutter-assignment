import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_theme.dart';
import 'package:goaluin_flutter_assignment/views/first_page.dart';
import 'package:goaluin_flutter_assignment/views/home_page.dart';
import 'package:goaluin_flutter_assignment/widgets/costum_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor1,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // container for the cancel button
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50, left: 20),
                      child: IconButton(
                        onPressed: () {
                          Get.to(() => const FirstPage());
                        },
                        icon: Icon(
                          Icons.close,
                          color: AppTheme.inputTextColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // container for the svg image
              Container(
                margin: const EdgeInsets.only(top: 50),
                // child: Image.asset(
                //   'assets/images/login_image.png',
                //   width: 300,
                //   height: 300,
                // ),
              ),
              // container for the welcome text
              Align(
                child: Container(
                  margin: const EdgeInsets.only(top: 50, right: 100),
                  child: const Text(
                    'Welcome \nBack!',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              // container for email and password textfield
              Container(
                margin: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: AppTheme.inputTextColor,
                          ),
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            color: AppTheme.inputTextColor,
                          ),
                          hintStyle: TextStyle(
                            color: AppTheme.backgroundColor2,
                          ),
                          border: InputBorder.none,
                          fillColor: AppTheme.backgroundColor1,
                          filled: true,
                        ),
                      ),
                    ),
                    Divider(
                      height: 0.1,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: AppTheme.inputTextColor,
                          ),
                          suffixIcon: Icon(
                            Icons.lock_outline,
                            color: AppTheme.inputTextColor,
                          ),
                          hintStyle: TextStyle(
                            color: AppTheme.inputTextColor,
                          ),
                          border: InputBorder.none,
                          fillColor: AppTheme.backgroundColor1,
                          filled: true,
                        ),
                      ),
                    ),

                    // login button
                    CustomElevatedButton(
                      text: "Login",
                      onPressed: () {
                        Get.to(() => const HomePage());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
