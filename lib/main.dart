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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:splashscreen(),
      routes: {
        '/onboarding':(context)=>Onboarding()
      },
    );
  }
}

