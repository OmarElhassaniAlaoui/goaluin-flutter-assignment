import 'package:flutter/material.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_theme.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomElevatedButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        style: TextButton.styleFrom(
          backgroundColor: AppTheme.buttonColor,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          // disabledBackgroundColor: Color();
        ),
      ),
    );
  }
}
