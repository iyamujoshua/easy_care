import 'package:easy_care/auth/forgot_password.dart';
import 'package:easy_care/auth/login.dart';
import 'package:easy_care/auth/signup.dart';
import 'package:easy_care/screens/Home/homescreen.dart';
import 'package:easy_care/screens/login_as/Register_as.dart';
import 'package:easy_care/screens/login_as/get_started.dart';
import 'package:easy_care/screens/login_as/login_as.dart';
import 'package:easy_care/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:easy_care/screens/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const splashscreen(),
      routes: {
        '/onboarding': (context) => Onboarding(),
        '/getstarted': (context) => getstarted(),
        '/LoginAs': (context) => LoginAs(),
        '/Register': (context) => Register(),
        '/Login': (context) => Login(),
        '/SignUp': (context) => SignUp(),
        "/ForgotPassword": (context) =>const ForgotPassword(),
        "/HomeScreen": (context) =>const HomeScreen()
        
      },
    );
  }
}
