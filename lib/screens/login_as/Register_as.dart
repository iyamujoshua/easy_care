import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                "asset/purplelogo.png",
                width: 100,
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Register as",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () => {
                  // '/Login'
                  Navigator.pushNamed(context, '/Login')
                },
                child: Container(
                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                  alignment: Alignment.center,
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                        color: Color(0xFF50008E),
                        width: 1,
                      )),
                  child: Text(
                    "Health Specialist",
                    style: TextStyle(
                      color: Color(0xFF50008E),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () => {
                  // '/Login'
                  Navigator.pushNamed(context, '/Login')
                },
                child: Container(
                  margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                  alignment: Alignment.center,
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                        color: Color(0xFF50008E),
                        width: 1,
                      )),
                  child: Text(
                    "Health Facility",
                    style: TextStyle(
                      color: Color(0xFF50008E),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () => {
                  // '/Login'
                  Navigator.pushNamed(context, '/Login')
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
                    "Patient",
                    style: TextStyle(
                      color: Colors.white,
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
