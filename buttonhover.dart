// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Hover Button Example'),
// //         ),
// //         body: Center(
// //           child: HoverButton(),
// //         ),
// //       ),
// //     );
// //   }
// // }

// class HoverButton extends StatefulWidget {
//   @override
//   _HoverButtonState createState() => _HoverButtonState();
// }

// class _HoverButtonState extends State<HoverButton> {
//   final String text;
//   bool _isHovered = false;

//   _HoverButtonState({required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (event) {
//         setState(() {
//           _isHovered = true;
//         });
//       },
//       onExit: (event) {
//         setState(() {
//           _isHovered = false;
//         });
//       },
//       child: ElevatedButton(
//         onPressed: () {
//           // Your button action here
//         },
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all<Color>(
//             _isHovered ? Color(0xffDDCC8C).withOpacity(0.8) : Color(0xff69482E),
//           ),
//           // You can customize other button properties like padding, border, etc. here
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Text(
//             widget.text,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }