import 'package:flutter/material.dart';

class CustomButtonWithBorder extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
  final double borderWidth;
  final Color buttonColor;
  final TextStyle textStyle; // Added TextStyle parameter

  CustomButtonWithBorder({
    required this.text,
    required this.onPressed,
    this.borderColor = const Color(0xFF50008E), // Default border color
    this.borderWidth = 1.0, // Default border width
    this.buttonColor = Colors.transparent, // Default button color
    this.textStyle = const TextStyle(
      color: Colors.black, // Default text color
      fontSize: 16,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5, top: 10),
        alignment: Alignment.center,
        height: 54,
        decoration: BoxDecoration(
          color: buttonColor, // Set the background color here
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: Text(
          text,
          style: textStyle, // Use the provided TextStyle
        ),
      ),
    );
  }
}
