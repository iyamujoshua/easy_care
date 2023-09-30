import 'package:flutter/material.dart';

import '../../utils/custom_button.dart';

class getstarted extends StatefulWidget {
  const getstarted({super.key});

  @override
  State<getstarted> createState() => _getstartedState();
}

class _getstartedState extends State<getstarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/purplelogo.png", width: 100,),
              SizedBox(height: 30,),
              Text("Let’s get started!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold),
              ),
              Text("Login to enjoy the features we’ve\n provided, and stay healthy!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),),
              SizedBox(height: 30,),
              GestureDetector(
              onTap: () => {
                // '/Login'
                Navigator.pushNamed(context, '/LoginAs')
              },
              child: Container(
                margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xFF50008E),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
              GestureDetector(
              onTap: () => {
                // '/Login'
                Navigator.pushNamed(context, '/Register')
              },
              child: Container(
                margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  color:  Colors.transparent,
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(
                    color: Color(0xFF50008E),
                    width: 1,
                  )
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xFF50008E),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
        
              
            ],
          ),
        ),
      ),
    );
  }
}