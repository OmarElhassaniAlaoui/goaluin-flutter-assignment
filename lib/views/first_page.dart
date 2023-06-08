import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_theme.dart';
import 'package:goaluin_flutter_assignment/views/auth/login_page.dart';
import 'package:goaluin_flutter_assignment/views/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backGroundColor1,
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            // Container(
            //   child:
            //   // Image.asset('assets/images/logo.png'),
            // ),
            SizedBox(
              height: 50.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'We are here',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.buttonColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                        "Your search is over here. We \nprovide great figma design to \nuse in your project"),
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
                      child: Text("Sign Up"),
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
                      child: Text("Sign In"),
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
                child: Text("App version 1.0.0"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// backgroundColor: AppTheme.backGroundColor1,

//       body: Container(

//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // container for the svg image
//             Container(
//                 // margin: const EdgeInsets.only(top: 50),
//                 // child: Image.asset(
//                 //   'assets/images/login_image.png',
//                 //   width: 300,
//                 //   height: 300,
//                 // ),
//                 ),
//             // container for text
//             Container(
//               margin: const EdgeInsets.only(top: 50),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'We are here',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   const Text(
//                       "Your search is over here. We \nprovide great figma design to \nuse in your project"),
//                 ],
//               ),
//             ),
//             // container for the button
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 // width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: AppTheme.backgroundColor1,
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(
//                     color: AppTheme.buttonColor,
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // elevated button
//                     Container(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Get.to(() => const HomePage());
//                         },
//                         child: const Text("Sign In"),
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 50, vertical: 20),
//                           primary: AppTheme.buttonColor,
//                           // onPrimary: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: double.infinity,
//                       child: TextButton(
//                           onPressed: () {
//                             // Get.to(() => const HomePage());
//                           },
//                           child: Text("SingUp"),
//                           style: TextButton.styleFrom(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 50, vertical: 20),
//                             primary: AppTheme.buttonColor,
//                             // onPrimary: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                           )),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
