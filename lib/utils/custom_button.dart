import 'package:flutter/material.dart';

class CustomeRaisedButton extends StatelessWidget {
  bool isLoading;
  String title;
  double size;
  Color titleColor, buttonColor;
  double? width;
  var onPress;
  CustomeRaisedButton({
    required this.title,
    this.titleColor = Colors.white,
    this.buttonColor = Colors.black,
    this.width,
    this.onPress,
    this.isLoading = false,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : this.onPress,
      child: Container(
        // margin: EdgeInsets.only(left: 20, right: 20, top: 10),
        alignment: Alignment.center,
        height: 54,
        decoration: BoxDecoration(
          color: buttonColor,
          gradient: LinearGradient(
            colors: [(Color(0xff9D59FF)), (Color(0xff560BC2))],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        child: isLoading
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 20,
                  height: 20,
                  child:
                      CircularProgressIndicator(backgroundColor: Colors.white),
                ),
              )
            : Text(
                this.title,
                style: TextStyle(
                    color: titleColor, fontSize: size != null ? size : 10),
              ),
      ),
    );
  }
}