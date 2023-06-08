import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_routs.dart';
import 'package:goaluin_flutter_assignment/core/services/services.dart';

class LoginController extends GetxController {
  // the global key for the form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
// text editing controller for the email field and password field
  late TextEditingController emailController;
  late TextEditingController passwordController;
  
  MyServices myServices = Get.find();

  //go to home page
  void goToHome() {
    Get.offNamed(AppRouts.loginPage);
  }
  // the function to validate the email field

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your password';
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
      return 'Please Enter a valid Email';
    }
    return null;
  }

  // the function to validate the password field
  String? validatePassword(String? value) {
    RegExp regex = new RegExp(r'^.{6,}$');
    if (value!.isEmpty) {
      return ("Password is required for login");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid Password(Min. 6 Character)");
    }
    return null;
  }

  // the function to submit the form
  void submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      //store the email and password in shared preferences
      myServices.sharedPreferences.setString('email', emailController.text);
      myServices.sharedPreferences.setString('password', passwordController.text);

      // go to home page
      Get.toNamed(AppRouts.homePage);

      Get.snackbar(
        'Login Success',
        'You are logged in successfully',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } 
    else {
      Get.snackbar(
        'Login Failed',
        'Please enter the correct email and password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  // the function to initialize the controller
  @override
  void onInit() { 
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  // the function to dispose the controller
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
