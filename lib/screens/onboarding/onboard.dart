// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class NewWidget extends StatelessWidget {
//   const NewWidget({
//     super.key,
//     required this.image,
//     required this.title,
//   });

//   final String image, title;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Spacer(),
//         SvgPicture.asset(
//           image,
//           height: 250,
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Text(
//           title,
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//         ),
//         Spacer(),
//         SizedBox(
//           height: 60,
//           width: 60,
//           child: ElevatedButton(
//             onPressed: () {
//               _pageController.nextPage(Curve.ease,
//                   duration: Duration(milliseconds: 300));
//             },
//             child: Image.asset("asset/arrow-right.png"),
//             style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF50008E)),
//           ),
//         )
//       ],
//     );
//   }
// }
