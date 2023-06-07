import 'package:flutter/material.dart'; 
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [  

           Container(  
            child: Image.asset("the SVG photo"),
           ), 
          // container for a text welcome back !
          Container( 
            child: Text("Welcome Back !"),
          ) , 
           



        ],
      ),
    );
  }
}