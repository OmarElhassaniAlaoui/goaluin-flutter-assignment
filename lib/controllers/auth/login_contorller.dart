import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController { 
  // the global key for the form 
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
// text editing controller for the email field and password field
  late TextEditingController emailController ; 
  late TextEditingController passwordController ; 
  // the function to validate the email field
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  } 
  // the function to validate the password field
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }
  // the function to submit the form
  void submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Get.snackbar(
        'Login Success',
        'You are logged in successfully',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        'Login Failed',
        'Please fix the errors',
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
