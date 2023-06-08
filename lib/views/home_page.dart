import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/views/auth/login_page.dart';
import 'package:goaluin_flutter_assignment/widgets/costum_buttons.dart';

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
              const Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'TO THE TEST APP',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                text: "Sign Out",
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
