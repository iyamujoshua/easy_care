import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState(); // Call super.initState() first
    Future.delayed(Duration(seconds: 3), () {
     Navigator.pushNamed(context, '/onboarding');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF50008E),
      body: Center(
        child: Image.asset("asset/firelogo.png", height: 30,),
      ),
    );
  }
}