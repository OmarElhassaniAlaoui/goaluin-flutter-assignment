import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/controllers/auth/login_contorller.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_theme.dart';
import 'package:goaluin_flutter_assignment/views/first_page.dart';
import 'package:goaluin_flutter_assignment/views/home_page.dart';
import 'package:goaluin_flutter_assignment/widgets/costum_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import google font package
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
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
                      margin: const EdgeInsets.only(top: 30, left: 20),
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
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 50),
                child: SvgPicture.asset(
                  'assets/images/login_image.svg',
                  // width: 160,
                  height: 180,
                ),
              ),
              // container for the welcome text
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.only(top: 30, right: 100),
                  child: Text(
                    'Welcome \nBack!',
                    style: GoogleFonts.montserrat(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.loginText,
                    ),
                  ),
                ),
              ),
              // container for email and password textfield
              Container(
                  margin: const EdgeInsets.all(20),
                  child: GetBuilder<LoginController>(
                    init: LoginController(),
                    builder: (controller) => Form(
                      key: controller.formKey,
                      child: Column(
                        children: [
                          Container(
                            child: TextFormField(
                              controller: controller.emailController,
                              // onChanged: (value) {
                              //   controller.emailController.text = value;
                              // },
                              onSaved: (value) {
                                controller.emailController.text = value!;
                              },
                              validator: controller.validateEmail,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: GoogleFonts.montserrat(
                                  fontSize: 20,
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
                            child: TextFormField(
                              controller: controller.passwordController,
                              onSaved: (value) {
                                controller.passwordController.text = value!;
                              },
                              validator: controller.validatePassword,
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: GoogleFonts.montserrat(
                                  fontSize: 20,
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
                              controller.submitForm();
                              // Get.to(() => const HomePage());
                            },
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
