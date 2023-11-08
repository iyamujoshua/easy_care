import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}



// showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           backgroundColor: Colors.white,
//                           content: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               SvgPicture.asset(
//                                 "asset/Done.svg",
//                                 width: 100,
//                                 height: 100,
//                               ),
//                               SizedBox(height: 20),
//                               Text(
//                                 "Yeay! Welcome Back",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                                 textAlign: TextAlign.center,
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 "Once again you login successfully\ninto firstcare app",
//                                 style: TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 13,
//                                     fontWeight: FontWeight.normal),
//                                 textAlign: TextAlign.center,
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               CustomButtonWithBorder(
//                                 text: "Go to home",
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, '/HomePage');
//                                 },
//                                 borderColor: Colors
//                                     .transparent, // Customize the border color here
//                                 borderWidth:
//                                     1.0, // Customize the border width here
//                                 buttonColor: BrandColors
//                                     .colorbackground, // Customize the background color here
//                                 textStyle: TextStyle(
//                                   color: Colors
//                                       .white, // Customize the text color here
//                                   fontSize: 14, // Customize the font size here
//                                   fontWeight: FontWeight
//                                       .bold, // Customize the font weight here
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );